//scr_createServer(type)
var corpse = instance_create(x, y, obj_corpse);
switch(argument0) {
    case("civilian"):
        corpse.image_index = 0;
        break;
    case("medic"):
        corpse.image_index = 1;
        break;
    case("engineer"):
        corpse.image_index = 2;
        break;
    case("mechanic"):
        corpse.image_index = 3;
        break;
    case("marine"):
        corpse.image_index = 4;
        break;
    case("disarmer"):
        corpse.image_index = 5;
        break;
    case("zombie"):
        corpse.image_index = 6;
        break;
    }
