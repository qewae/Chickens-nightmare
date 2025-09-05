if collision_rectangle(x,y,x+64,y+64,Obj_player,false,false){
	if active = false{
	active = true
	obj_check_manager.check = checkpoint
	obj_check_manager.check_room = restart_room
	sprite_index = spr_check_on
	}
}