if (keyboard_check_pressed(ord("E"))) {
if (room= rm_tut) {
    obj_pausar.active = true;
    previous_room = room;}
room_goto(global.previous_room);
}