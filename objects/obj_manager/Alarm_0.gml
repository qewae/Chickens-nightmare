if obj_check_manager.check_room !=current_room{
room_goto(obj_check_manager.check_room)
}
else
{
	Obj_player.x = obj_check_manager.check.x+32
Obj_player.y = obj_check_manager.check.y+32
Obj_player.sprite_index = spr_player
}
obj_manager.hp = 1
obj_manager.move = true
obj_manager.dead = false