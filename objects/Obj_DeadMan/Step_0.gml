x = x + xspd 
ad = x - Obj_player.x
if place_meeting(x + xspd,y,Obj_wall) == true{
	sprite_index = spr_DeadMan
	if xspd > 0{
		xspd = 0
	alarm_set(0,2)
	x = x - 3
	
	}
	if xspd < 0 {
		alarm_set(1,2)
		xspd = 0
		x = x + 3
	}
}
	
if place_meeting(x + xspd,y,obj_air) == true{
	sprite_index = spr_DeadMan
	if xspd > 0{
		xspd = 0
	alarm_set(0,2)
	x = x - 3
	
	}
	if xspd < 0 {
		alarm_set(1,2)
		xspd = 0
		x = x + 3
	}
}
if place_meeting(x + xspd,y,obj_DAir) == true{
	sprite_index = spr_DeadMan
	if xspd > 0{
		xspd = 0
	alarm_set(0,2)
	x = x - 3
	
	}
	if xspd < 0 {
		alarm_set(1,2)
		xspd = 0
		x = x + 3
	}
	
	
	
	
	
}

if place_meeting(x+xspd,y,Obj_player) ==true{
	obj_manager.hp = 0
}

if collision_rectangle(x-100,y-8,x+132,y+16,Obj_player,false,false){
	if cd = false{

	if ad < 101 and ad > 0{
		xspd = -3
		alarm_set(4,60)
		alarm_set(3,240)
		cd = true
		sprite_index = spr_LDash
	}
	if ad >-101 and ad < 1{
		xspd = 3
		alarm_set(5,60)
		alarm_set(3,240)
		cd = true
		sprite_index = spr_RDash
	}
	
	}
}

	
	


	

//if place_meeting(x - xspd,y,Obj_wall) == true{
//	if xspd = 4{
//	xspd = -4
//	if xspd = -4 {
//		xspd = 4
//		x += xspd
//	}
//}

