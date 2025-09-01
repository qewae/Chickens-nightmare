if instance_exists(obj_manager.target_door){
	
	
	if instance_exists(obj_check_manager.check){
	obj_manager.target_door = obj_check_manager.check
	}
	x = obj_manager.target_door.x + 32
    y = obj_manager.target_door.y + 32
}
if instance_exists(obj_check_manager.check){
	
	
	x = obj_check_manager.check.x + 32
    y = obj_check_manager.check.y + 32
}