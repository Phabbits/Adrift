/**scr_findDir
 * finds current direction based on hspeed and vspeed
 * argument0 - hspeed
 * argument1 - vspeed
 * argument2 - tolerance
 */
if (argument0 < argument2 && argument0 > -argument2 && argument1 < -argument2) return 0;    //up
if (argument0 > argument2 && argument1 < argument2 && argument1 > -argument2) return 2;     //right
if (argument0 < argument2 && argument0 > -argument2 && argument1 > argument2) return 4;     //down
if (argument0 < -argument2 && argument1 < argument2 && argument1 > -argument2 ) return 6;   //left
if (argument0 > argument2 && argument1 < -argument2) return 1;                              //right, up
if (argument0 > argument2 && argument1 > argument2) return 3;                               //right, down
if (argument0 < argument2 && argument1 > argument2 ) return 5;                              //left, down
if (argument0 < argument2 && argument1 < -argument2 ) return 7;                             //left, up
//return null
return 8
