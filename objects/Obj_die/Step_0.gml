if collision_rectangle (x-2,y-2,x+2+35*x1,y+y1,Obj_player,false,false){
	
	if obj_manager.hp > 0{
	obj_manager.hp = 0
	Obj_player.sprite_index = spr_player
	alarm_set(0,60)
	obj_manager.target_door = obj_check_manager.check
	}
}
if obj_manager.hp < 1{
	obj_manager.move = false
	
}



if obj_manager.hp < 1{
	
Obj_player.sprite_index = spr_dead


	
}
if instance_exists(obj_check_manager.check_room){
restart = obj_check_manager.check_room
}