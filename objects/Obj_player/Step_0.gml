right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);

if obj_manager.move = true{
xspd = (right_key-left_key)*move_speed;
}
//yspd= (-up_key)*jump_speed;

//collisions

if yspd > 15{
	yspd = 15
}

if(place_meeting(x , y + 0.005, Obj_wall) == true||place_meeting(x , y + 0.005, Obj_chicken_normal) == true)
	{
		if(keyboard_check(vk_up)){
			if obj_manager.move = true{
		yspd=-jump_speed;
			}
		
		}
		
		fall=0;
	//fall-=0.02;
	}
	else if place_meeting(x , y + yspd, Obj_jump) == true
			{
				fall=0;
				yspd=-5;
			}
	else{
	fall+=0.005;
	yspd+=fall;
	}
if place_meeting(x + xspd, y, Obj_wall) == true
	{
	xspd=0;
	}
if place_meeting(x , y + yspd, Obj_wall) == true
	{
	yspd=0;
	fall=0;
	}

if place_meeting(x , y + yspd, Obj_chicken_normal) == true
	{
	yspd=0;
	fall=0;
	}
if place_meeting(x + xspd-0.1, y, Obj_die) == true
	{
	if obj_manager.hp > 0{
	obj_manager.hp = 0
	Obj_player.sprite_index = spr_dead
	obj_manager.dead = true
	}
	}
if place_meeting(x , y + yspd-0.1, Obj_die) == true
	{
	if obj_manager.hp > 0{
	obj_manager.hp = 0
	Obj_player.sprite_index = spr_dead
	obj_manager.dead = true
	}
	}
	if place_meeting(x , y + 0.005, Obj_die) == true
	{
	if obj_manager.hp > 0{
	obj_manager.hp = 0
	Obj_player.sprite_index = spr_dead
	obj_manager.dead = true
	
	}
	}
//if obj_manager.dead = true {
//	restart = obj_check_manager.check_room
//	room_goto(restart)
//}

if place_meeting(x + xspd,y,Obj_chicken_normal) == true{
	if place_meeting(x + xspd, y, Obj_wall) == false{
		xspd+=Obj_chicken_normal.xspd;
	}
	 
	}

		


x += xspd;
y += yspd;