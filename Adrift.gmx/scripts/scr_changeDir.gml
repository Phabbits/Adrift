/**scr_changeDir
 * finds if dir change is possible
 * argument0 - dir
 * argument1 - checkDir
 * returns true
 */
//maxL - max left change
maxL = argument1 - 1;
if (maxL < 0) maxL = 8 + maxL;

//maxR - max right change
maxR = argument1 + 1;
if (maxR > 7) maxR = 0 + (maxR - 8);

//check
if (argument0 = maxL || argument0 = maxR || argument0 = argument1) return true;
else return false;
