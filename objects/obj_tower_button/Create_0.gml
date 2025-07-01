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

function show_definition(unlocked_sprite, locked_sprite){
	spawn_x = x;
	spawn_y = y + 130;
	if (is_locked == true){
		correct_sprite = locked_sprite;
	} else {
		correct_sprite = unlocked_sprite;
	}
	instance_create_layer(spawn_x, spawn_y, "Instances", obj_definition);
	instance_nearest(spawn_x, spawn_y, obj_definition).sprite_index = correct_sprite;
}

function hide_definition(){
	instance_destroy(instance_nearest(spawn_x, spawn_y, obj_definition));
}