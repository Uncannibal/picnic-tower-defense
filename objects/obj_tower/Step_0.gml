if(tower_health <= 0){
	instance_destroy();
	time_source_destroy(shoot_timer);
}

if(released == false){
	x = mouse_x;
	y = mouse_y;
	
	if(check_valid_spot() == false){
		image_alpha = 1;
		image_blend = c_red;
	}else{
		image_blend = c_white;
		image_alpha = 0.75;
	}
}