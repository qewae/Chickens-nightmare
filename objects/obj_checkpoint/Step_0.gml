if collision_rectangle(x,y,x+64,y+64,Obj_player,false,false){
	active = true
	obj_check_manager.check = checkpoint
	sprite_index = spr_check_on
}