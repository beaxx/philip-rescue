if (instance_exists(obj_pausar)) {
    obj_pausar.active = true;
    previous_room = room;}

room_goto(global.previous_room);