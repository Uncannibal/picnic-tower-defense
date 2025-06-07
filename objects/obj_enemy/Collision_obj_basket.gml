is_hunting = false;

time_source_start(kill_timer);

if(is_dying == false){
	obj_basket.basket_health--;
	image_alpha = 0.5;
	direction -= 180;
	image_angle = direction;
	speed = 5;
}

is_dying = true;