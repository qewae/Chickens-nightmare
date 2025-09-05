
if obj_check_manager.check_room !=obj_manager.current_room{
room_goto(obj_check_manager.check_room)
}
obj_manager.hp = 1
obj_manager.move = true
obj_manager.dead = false

//Obj_player.sprite_index = spr_player
//obj_manager.hp = 1
//obj_manager.move = true
//obj_manager.dead = false