is_locked = true;
cur_tower = instance_nearest(x, y, obj_tower);

depth = -10000;

function sprite_check(sprite){
	if(is_locked == false){
		sprite_index = sprite;
	}
}

function unlock_button(sprite){
	is_locked = false;
	sprite_index = sprite;
}

button_blend_timer = time_source_create(time_source_game, 0.15, time_source_units_seconds, function(){
	image_blend = c_white;
});
