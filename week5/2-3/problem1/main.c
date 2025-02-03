#include "stdio.h"
#include "wiringPi.h"
#include "stdbool.h"
//const
#define PIN_LED 21

int main()
{
wiringPiSetupGpio();

pinMode( PIN_LED, OUTPUT ); //sets the pin 21 to output mode

bool on = false;

while( true ){
    if(on)
    {
        digitalWrite(PIN_LED, HIGH);
        on = false;
    }else {
        digitalWrite(PIN_LED, LOW );
        on = true; 
    }
    delay(250)//millisec 
}

return  0;

}
