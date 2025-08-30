x = x + xspd 

if place_meeting(x + xspd,y,Obj_wall) == true{
	if xspd = 1{
		xspd = 0
	alarm_set(0,2)
	x = x - 3
	
	}
	if xspd = -1 {
		alarm_set(1,2)
		xspd = 0
		x = x + 3
	}
}
if xspd = 1{
	sprite_index = Spr_chicken_normal
}
else{
	sprite_index = spr_NormalChickRight
}


//if place_meeting(x - xspd,y,Obj_wall) == true{
//	if xspd = 4{
//	xspd = -4
//	x += xspd
//	}
//	if xspd = -4 {
//		xspd = 4
//		x += xspd
//	}
//}

