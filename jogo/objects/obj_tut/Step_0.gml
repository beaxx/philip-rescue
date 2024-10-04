if (keyboard_check_pressed(vk_enter)) {
if (room= rm_tut) {
    obj_pausar.active = true;
    previous_room = room;}

room_goto(global.previous_room);
}