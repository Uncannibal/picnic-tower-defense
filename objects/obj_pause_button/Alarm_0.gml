is_paused = not is_paused;

if (is_paused == true){
	instance_deactivate_object(obj_enemy);
	instance_deactivate_object(obj_tower);
	instance_deactivate_object(obj_tower_button);
	instance_deactivate_object(obj_bullet);
	instance_deactivate_object(obj_wave_button);
	instance_deactivate_object(obj_basket);
	instance_deactivate_object(obj_trashcan);
	instance_deactivate_object(obj_sugar);
	time_source_pause(time_source_game);
} else {
	instance_activate_object(obj_enemy);
	instance_activate_object(obj_tower);
	instance_activate_object(obj_tower_button);
	instance_activate_object(obj_bullet);
	instance_activate_object(obj_wave_button);
	instance_activate_object(obj_basket);
	instance_activate_object(obj_trashcan);
	instance_activate_object(obj_sugar);
	time_source_resume(time_source_game);
}   