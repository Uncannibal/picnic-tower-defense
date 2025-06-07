// Inherit the parent event
event_inherited();

sprite_index = spr_play_button;

if(obj_game.is_wave_over == true){
	obj_game.wave_number++;
	obj_game.is_wave_over = false;
	obj_game.just_started_wave = true;
}