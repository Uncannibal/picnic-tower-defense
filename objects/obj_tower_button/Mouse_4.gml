image_blend = $999999;
time_source_start(button_blend_timer);

var valid_click = (
		place_meeting(x, y, obj_tower) == false && 
		obj_game.is_wave_over == true &&
		is_locked == false
)

if(valid_click == true){
	instance_create_layer(x, y, "Instances", tower);
}