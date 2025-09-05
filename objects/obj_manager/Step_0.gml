if hp = 0{
	current_room = room
	if dead = false{
	Obj_player.sprite_index = spr_dead
	alarm_set(0,60)
	dead = true
	move = false
	}
}

	