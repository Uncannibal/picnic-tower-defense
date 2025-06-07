if (enemy_health <= 0){
		instance_destroy();
	}
	
if (place_meeting(x, y, obj_tower) && obj_tower.released == true && is_hunting == true
&& in_air == false){
	if (is_stuck == false){
		last_frame_x = x;
		last_frame_y = y;
		is_stuck = true;
	}else{
		x = last_frame_x;
		y = last_frame_y;
	}
}else{
	is_stuck = false;
}