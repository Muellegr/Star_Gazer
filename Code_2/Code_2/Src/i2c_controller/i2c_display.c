//
// Created by Graham on 11/7/2020.
//

#include "i2c_display.h"
#include "ssd1306.h"

void display_init(){
    uint8_t result = ssd1306_Init();
}

//Debug interface that cleans the screen and then writes down 4 strings
void display_4x_string( char *str_deg, char* str_len, char *str_x, char *str_y )
{
    ssd1306_Fill(Black);
    int offset_per = (64/4);
    ssd1306_SetCursor(0,offset_per*0);
    ssd1306_WriteString(str_deg, Font_11x18, White);

    ssd1306_SetCursor(0,offset_per*1);
    ssd1306_WriteString(str_len, Font_11x18, White);

    ssd1306_SetCursor(0,offset_per*2);
    ssd1306_WriteString(str_x, Font_11x18, White);

    ssd1306_SetCursor(0,offset_per*3);
    ssd1306_WriteString(str_y, Font_11x18, White);
    ssd1306_UpdateScreen();

}
