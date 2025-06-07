image_blend = $999999;
time_source_start(button_blend_timer);

if(place_meeting(x, y, obj_tower) == false && obj_game.is_wave_over == true){
	instance_create_layer(x, y, "Instances", tower);
}