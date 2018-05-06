/**scr_findPath
 * finds best path
 */

//move towards crane
    //rx, ry - rounded x and y
    rx = x
    ry = y
    
    //find dir
    if (dir = -1) {
        if (ry > crane.y) {    //up
            dir = 0;
            pathDir = dir;
            }
        else if (rx < crane.x) {   //right
            dir = 2;
            pathDir = dir;
            }
        else if (ry < crane.y) {   //down
            dir = 4;
            pathDir = dir;
            }
        else if (rx > crane.x) {   //left
            dir = 6;
            pathDir = dir;
            }
        }
    
    //check if can go on pathDir
    if (pathDir != dir) {
        if (pathDir = 0 && place_free(rx, ry - 8)) {    //up
            //stop
            hspeed = 0;
            
            dir = pathDir;
            //pathDir = -1;
            }
        if (pathDir = 2 && place_free(rx + 8, ry)) {    //right
            //stop
            vspeed = 0;
            
            dir = pathDir;
            //pathDir = -1;
            }
        if (pathDir = 4 && place_free(rx, ry + 8)) {    //down
            //stop
            hspeed = 0;
            
            dir = pathDir;
            //pathDir = -1;
            }
        if (pathDir = 6 && place_free(rx - 8, ry)) {    //left
            //stop
            vspeed = 0;
            
            dir = pathDir;
            //pathDir = -1;
            }
        }
    
    //follow dir
    if (dir = 0) {  //up
        if (dir = pathDir) {
            if (place_free(x, y - moveSpeed) && ry > crane.y) {
                vspeed = -moveSpeed;
                }
            else if (ry > crane.y) {
                //set pathDir
                pathDir = dir;
                
                //i - next
                i = 0;
                do {    //check left
                    i += 1;
                    if (place_free(rx - i*16, ry - 8)) dir = 6    //left
                    }
                until (!place_free(rx - i*16, ry))
                //i - next
                i = 0;
                do {    //check right
                    i += 1;
                    if (place_free(rx + i*16, ry - 8)) dir = 2    //right
                    }
                until (!place_free(rx + i*16, ry))
                }
            else {
                //stop
                vspeed = 0;
                dir = -1;
                }
            }
        else {
            if (place_free(x , y - moveSpeed)) {
                vspeed = -moveSpeed;
                }
            else {
                
                //set pathDir
                pathDir = dir;
                
                //i - next
                i = 0;
                do {    //check left
                    i += 1;
                    if (place_free(rx - i*16, ry - 8)) dir = 6    //left
                    }
                until (!place_free(rx - i*16, ry))
                //i - next
                i = 0;
                do {    //check right
                    i += 1;
                    if (place_free(rx + i*16, ry - 8)) dir = 2    //right
                    }
                until (!place_free(rx + i*16, ry))
                }
            }
        }
    if (dir = 2) {  //right
        if (dir = pathDir) {
            if (place_free(x + moveSpeed, y) && rx < crane.x) {
                hspeed = moveSpeed;
                }
            else if (rx < crane.x) {
                //set pathDir
                pathDir = dir;
                
                //i - next
                i = 0;
                do {    //check up
                    i += 1;
                    if (place_free(rx + 8, ry - i*16)) dir = 0    //up
                    }
                until (!place_free(rx, ry - i*16))
                //i - next
                i = 0;
                do {    //check down
                    i += 1;
                    if (place_free(rx + 8, ry + i*16)) dir = 4    //down
                    }
                until (!place_free(rx, ry + i*16))
                }
            else {
                //stop
                hspeed = 0;
                dir = -1;
                }
            }
        else {
            if (place_free(x + moveSpeed, y)) {
                hspeed = moveSpeed;
                }
            else {
                //set pathDir
                pathDir = dir;
                
                //i - next
                i = 0;
                do {    //check up
                    i += 1;
                    if (place_free(rx + 8, ry - i*16)) dir = 0    //up
                    }
                until (!place_free(rx, ry - i*16))
                //i - next
                i = 0;
                do {    //check down
                    i += 1;
                    if (place_free(rx + 8, ry + i*16)) dir = 4    //down
                    }
                until (!place_free(rx, ry + i*16))
                }
            }
        }
    if (dir = 4) {  //down
        if (dir = pathDir) {
            if (place_free(x, y + moveSpeed + 1) && ry < crane.y) {
                vspeed = moveSpeed;
                }
            else if (ry < crane.y) {
                //set pathDir
                pathDir = dir;
                
                 //i - next
                i = 0;
                do {    //check left
                    i += 1;
                    if (place_free(rx - i*16, ry + 8)) dir = 6    //left
                    }
                until (!place_free(rx - i*16, ry))
                //i - next
                i = 0;
                do {    //check right
                    i += 1;
                    if (place_free(rx + i*16, ry + 8)) dir = 2    //right
                    }
                until (!place_free(rx + i*16, ry))
                }
            else {
                //stop
                vspeed = 0;
                dir = -1;
                }
            }
        else {
            if (place_free(x, y + moveSpeed + 1)) {
                vspeed = moveSpeed;
                }
            else {
                //set pathDir
                pathDir = dir;
                
                 //i - next
                i = 0;
                do {    //check left
                    i += 1;
                    if (place_free(rx - i*16, ry + 8)) dir = 6    //left
                    }
                until (!place_free(rx - i*16, ry))
                //i - next
                i = 0;
                do {    //check right
                    i += 1;
                    if (place_free(rx + i*16, ry + 8)) dir = 2    //right
                    }
                until (!place_free(rx + i*16, ry))
                }
            }
        }
    if (dir = 6) {  //left
        if (dir = pathDir) {
            if (place_free(x - moveSpeed, y) && (rx > crane.x)) {
                hspeed = -moveSpeed;
                }
            else if (rx > crane.x) {
                //set pathDir
                pathDir = dir;
                
                //i - next
                i = 0;
                do {    //check up
                    i += 1;
                    if (place_free(rx - 8, ry - i*16)) dir = 0    //up
                    }
                until (!place_free(rx, ry - i*16))
                //i - next
                i = 0;
                do {    //check down
                    i += 1;
                    if (place_free(rx - 8, ry + i*16)) dir = 4    //down
                    }
                until (!place_free(rx, ry + i*16))
                }
            else {
                //stop
                hspeed = 0;
                dir = -1;
                }
            }
        else {
            if (place_free(x - moveSpeed, y)) {
                hspeed = -moveSpeed;
                }
            else {
                //set pathDir
                pathDir = dir;
                
                //i - next
                i = 0;
                do {    //check up
                    i += 1;
                    if (place_free(rx - 8, ry - i*16)) dir = 0    //up
                    }
                until (!place_free(rx, ry - i*16))
                //i - next
                i = 0;
                do {    //check down
                    i += 1;
                    if (place_free(rx - 8, ry + i*16)) dir = 4    //down
                    }
                until (!place_free(rx, ry + i*16))
                }
            }
        }
