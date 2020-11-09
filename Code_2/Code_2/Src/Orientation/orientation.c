#include "orientation.h"

typedef struct{
    gyroscope_orientation_raw gyroscope_raw;
    magnometer_orientation_raw magnometer_raw;
} orientation_raw_type;

//The orientation_controller_type is an interface that allows us to slowly
typedef struct {

} orientation_controller_type;
//Main device
static orientation_controller_type orientation_controller;

//Get raw data

//Convert it to same sensitivity
void init_orientation_controller(){

}

void get_orientation_update(){
    //Get gyroscope raw
    //Get magnometer raw
    gyroscope_orientation_raw gyroscope_raw;
    magnometer_orientation_raw magnometer_raw;
    bool result;

    //Get acceleration data
    result = get_gyroscope_acceleration( &gyroscope_raw );
    debug_assert_if(!result);


}
//Can convert it into celestrial coordinates after

