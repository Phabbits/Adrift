//scr_evacuateCivilians(player)
if (instance_exists(driver) && driver != self) {
    //activate passenger
    if (driverInput == 0) {   
        //set passenger to position
        with (driver) {
            active = true;
            state = "follow";
            following = argument0;
            leader = argument0.statTracker;
            ds_list_add(argument0.followers, id);
            }
        //reset driver
        driver = noone;
        }
    }
for (i = 0; i < passengerAmount; i++) {
    var passenger = passengers[i];
    if (instance_exists(passenger)) {
        //activate passenger
        if (passenger.playerInput == 0) {   
            //set passenger to position
            with (passenger) {
                active = true;
                state = "follow";
                following = argument0;
                leader = argument0.statTracker;
                ds_list_add(argument0.followers, id);
                }
            //reset passenger
            passengers[i] = noone;
            }
        }
    }
