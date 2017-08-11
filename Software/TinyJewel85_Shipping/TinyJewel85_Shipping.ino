/*
Many thank's to :
- Davis A. Mellis : http://highlowtech.org/?p=1695
- Jeff Saltzman : http://forum.arduino.cc/index.php?topic=14479.0
- Arduino Fundation : https://arduino.cc
- Adafruit : https://adafruit.com
*/

#include <Adafruit_NeoPixel.h>
#ifdef __AVR__
#include <avr/power.h>
#endif

// Pattern types supported:
enum  pattern { NONE, RAINBOW_CYCLE, THEATER_CHASE };
// Patern directions supported:
enum  direction { FORWARD, REVERSE };
float potard;// declare float to store potientiometer value

// NeoPattern Class - derived from the Adafruit_NeoPixel class
class NeoPatterns :
  public Adafruit_NeoPixel
{
  public:

    // Member Variables:
    pattern  ActivePattern;  // which pattern is running
    direction Direction;     // direction to run the pattern

    unsigned long Interval;   // milliseconds between updates
    unsigned long lastUpdate; // last update of position

    uint32_t Color1, Color2;  // What colors are in use
    uint16_t TotalSteps;  // total number of steps in the pattern
    uint16_t Index;  // current step within the pattern

    void (*OnComplete)();  // Callback on completion of pattern

    // Constructor - calls base-class constructor to initialize strip
    NeoPatterns(uint16_t pixels, uint8_t pin, uint8_t type, void (*callback)())
      :
      Adafruit_NeoPixel(pixels, pin, type)
    {
      OnComplete = callback;
    }

    // Update the pattern
    void Update()
    {
      if ((millis() - lastUpdate) > Interval) // time to update
      {
        lastUpdate = millis();
        switch (ActivePattern)
        {
          case RAINBOW_CYCLE:
            RainbowCycleUpdate();
            break;
          case THEATER_CHASE:
            TheaterChaseUpdate();
            break;
          default:
            break;
        }
      }
    }

    // Increment the Index and reset at the end
    void Increment()
    {
      if (Direction == FORWARD)
      {
        Index++;
        if (Index >= TotalSteps)
        {
          Index = 0;
          if (OnComplete != NULL)
          {
            OnComplete(); // call the comlpetion callback
          }
        }
      }
      else // Direction == REVERSE
      {
        --Index;
        if (Index <= 0)
        {
          Index = TotalSteps - 1;
          if (OnComplete != NULL)
          {
            OnComplete(); // call the comlpetion callback
          }
        }
      }
    }

    // Reverse pattern direction
    void Reverse()
    {
      if (Direction == FORWARD)
      {
        Direction = REVERSE;
        Index = TotalSteps - 1;
      }
      else
      {
        Direction = FORWARD;
        Index = 0;
      }
    }

    // Initialize for a RainbowCycle
    void RainbowCycle(uint8_t interval, direction dir = FORWARD)
    {
      ActivePattern = RAINBOW_CYCLE;
      Interval = interval;
      TotalSteps = 255;
      Index = 0;
      Direction = dir;
    }

    // Update the Rainbow Cycle Pattern
    void RainbowCycleUpdate()
    {
      for (int i = 0; i < numPixels(); i++)
      {
        uint32_t wheelColor = Wheel(((i * 256 / numPixels()) + Index) & 255);
        setPixelColor(i, (Red(wheelColor) * potard), (Green(wheelColor) * potard), (Blue(wheelColor) * potard));
      }
      show();
      Increment();
    }

    // Initialize for a Theater Chase
    void TheaterChase(uint32_t color1, uint32_t color2, uint8_t interval, direction dir = FORWARD)
    {
      ActivePattern = THEATER_CHASE;
      Interval = interval;
      TotalSteps = numPixels();
      Color1 = color1;
      Color2 = color2;
      Index = 0;
      Direction = dir;
    }

    // Update the Theater Chase Pattern
    void TheaterChaseUpdate()
    {
      for (int i = 0; i < numPixels(); i++)
      {
        if ((i + Index) % 3 == 0)
        {
          setPixelColor(i, Color1);
        }
        else
        {
          setPixelColor(i, Color2);
        }
      }
      show();
      Increment();
    }

    // Calculate 50% dimmed version of a color (used by ScannerUpdate)
    uint32_t DimColor(uint32_t color)
    {
      // Shift R, G and B components one bit to the right
      uint32_t dimColor = Color(Red(color) >> 1, Green(color) >> 1, Blue(color) >> 1);
      return dimColor;
    }

    // Set all pixels to a color (synchronously)
    void ColorSet(uint32_t color)
    {
      for (int i = 0; i < numPixels(); i++)
      {
        setPixelColor(i, color);
      }
      show();
    }

    // Returns the Red component of a 32-bit color
    uint8_t Red(uint32_t color)
    {
      return (color >> 16) & 0xFF;
    }

    // Returns the Green component of a 32-bit color
    uint8_t Green(uint32_t color)
    {
      return (color >> 8) & 0xFF;
    }

    // Returns the Blue component of a 32-bit color
    uint8_t Blue(uint32_t color)
    {
      return color & 0xFF;
    }

    // Input a value 0 to 255 to get a color value.
    // The colours are a transition r - g - b - back to r.
    uint32_t Wheel(byte WheelPos)
    {
      WheelPos = 255 - WheelPos;
      if (WheelPos < 85)
      {
        return Color(255 - WheelPos * 3, 0, WheelPos * 3);
      }
      else if (WheelPos < 170)
      {
        WheelPos -= 85;
        return Color(0, WheelPos * 3, 255 - WheelPos * 3);
      }
      else
      {
        WheelPos -= 170;
        return Color(WheelPos * 3, 255 - WheelPos * 3, 0);
      }
    }
};
//------------------------------------------------------------
//Completion Routines - get called on completion of a pattern
//------------------------------------------------------------

// Ring1 Completion Callback
void Ring1Complete()
{

}

// Define some NeoPatterns for the two rings
//  as well as some completion routines
NeoPatterns Ring1(3, 4, NEO_GRBW + NEO_KHZ800, Ring1Complete);

int showType = 1;//initialize to the first animation

// Initialize everything and prepare to start
void setup()
{
#if defined (__AVR_ATtiny85__)
  if (F_CPU == 8000000) clock_prescale_set(clock_div_1);
#endif
  pinMode(3, INPUT);//pull_up the button
  digitalWrite(3, HIGH );//set D3 to HIGH
  float potard =  0.05;// value brightness ( between 0 - 1)
  // Initialize the LED
  Ring1.begin();
  Ring1.ActivePattern = NONE;
  Ring1.ColorSet(Ring1.Color(0, 0, 0, 255 * potard));
}

// Main loop
void loop()
{
  Ring1.Update();  // Update the rings.
  int b = checkButton();// Check Button for event and go to the event
  if (b == 1) clickEvent();
  if (b == 2) doubleClickEvent();
  if (b == 3) holdEvent();
  if (b == 4) longHoldEvent();
}

void clickEvent() {// Change animation
  showType++;
  if (showType > 9)
    showType = 1;
  startShow(showType);
}
void doubleClickEvent() { //Change to Mininum Luminosity
  potard =  0.05;
  startShow(showType);
}
void holdEvent() { //Change to Medium Luminosity
  potard =  0.35;
  startShow(showType);
}
void longHoldEvent() { //Change to Maximum Luminosity
  potard =  1;
  startShow(showType);
}

void startShow(int i) { //Chose between the animation
  switch (i) {
    case 1:
      //WHITE
      Ring1.ActivePattern = NONE;
      Ring1.ColorSet(Ring1.Color(0, 0, 0, 255 * potard));
      break;
    case 2:
      //RAINBOWCYCLE
      Ring1.ActivePattern = NONE;
      Ring1.RainbowCycle(30);
      break;
    case 3:
      //THEATER CHASE WHITE
      Ring1.ActivePattern = NONE;
      Ring1.TheaterChase(Ring1.Color(0, 0, 0, 255 * potard), Ring1.Color(0, 0, 0, 0), 250);
      break;
    case 4:
      //THEATER CHASE RED
      Ring1.ActivePattern = NONE;
      Ring1.TheaterChase(Ring1.Color(255 * potard, 0, 0, 0), Ring1.Color(0, 0, 0, 0), 250);
      break;
    case 5:
      //THEATER CHASE GREEN
      Ring1.ActivePattern = NONE;
      Ring1.TheaterChase(Ring1.Color(0, 255 * potard, 0, 0), Ring1.Color(0, 0, 0, 0), 250);
      break;
    case 6:
      //THEATER CHASE BLUE
      Ring1.ActivePattern = NONE;
      Ring1.TheaterChase(Ring1.Color(0, 0, 255 * potard, 0), Ring1.Color(0, 0, 0, 0), 250);
      break;
    case 7:
      //THEATER CHASE YELLOW
      Ring1.ActivePattern = NONE;
      Ring1.TheaterChase(Ring1.Color(255 * potard, 255 * potard, 0, 0), Ring1.Color(0, 0, 0, 0), 250);
      break;
    case 8:
      //THEATER CHASE PURPLE
      Ring1.ActivePattern = NONE;
      Ring1.TheaterChase(Ring1.Color(255 * potard, 0, 255 * potard, 0), Ring1.Color(0, 0, 0, 0), 250);
      break;
    case 9:
      //THEATER CHASE CYAN
      Ring1.ActivePattern = NONE;
      Ring1.TheaterChase(Ring1.Color(0, 255 * potard, 255 * potard, 0), Ring1.Color(0, 0, 0, 0), 250);
      break;
  }
}



