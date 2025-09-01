if collision_circle(x,y,16,Obj_player,true,false){
	obj_manager.target_door = next_door
	room_goto(target_room)
	//room_restart()
	
}