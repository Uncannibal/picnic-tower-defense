// Inherit the parent event
event_inherited();

function pause_logic(){
	if (obj_pause_button.is_paused == true){
	//deactivate game
		instance_deactivate_object(obj_enemy);
		instance_deactivate_object(obj_tower);
		instance_deactivate_object(obj_tower_button);
		instance_deactivate_object(obj_bullet);
		instance_deactivate_object(obj_wave_button);
		instance_deactivate_object(obj_basket);
		instance_deactivate_object(obj_trashcan);
		instance_deactivate_object(obj_sugar);
		time_source_pause(time_source_game);
		
	//activate settings
		time_source_resume(obj_button.sprite_timer);
		time_source_start(obj_pause_button.sprite_timer)
		instance_activate_object(obj_fade_screen);
		instance_activate_object(obj_settings_box);
		instance_activate_object(obj_play_button);
		instance_activate_object(obj_quit_button);
} else {
	//activate game
		instance_activate_object(obj_enemy);
		instance_activate_object(obj_tower);
		instance_activate_object(obj_tower_button);
		instance_activate_object(obj_bullet);
		instance_activate_object(obj_wave_button);
		instance_activate_object(obj_basket);
		instance_activate_object(obj_trashcan);
		instance_activate_object(obj_sugar);
		time_source_resume(time_source_game);
		
	//deactivate settings
		instance_deactivate_object(obj_fade_screen);
		instance_deactivate_object(obj_settings_box);
		instance_deactivate_object(obj_play_button);
		instance_deactivate_object(obj_quit_button);
}   
}

function deactivate_warning(){
	instance_deactivate_object(obj_quit_box);
	instance_deactivate_object(obj_back_button);
	instance_deactivate_object(obj_quit_to_title);
}

is_paused = false;

deactivate_warning();
pause_logic();

