right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);

xspd = (right_key-left_key)*move_speed;
//yspd= (-up_key)*jump_speed;

//collisions



if place_meeting(x , y + 0.005, Obj_wall) == true
	{
		if(keyboard_check(vk_up)){
		yspd=-jump_speed;
		
		}
		fall=0;
	//fall-=0.02;
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



	
		


x += xspd;
y += yspd;