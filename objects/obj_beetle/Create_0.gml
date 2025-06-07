// Inherit the parent event
event_inherited();

shoot_timer = time_source_create(time_source_game, 2, time_source_units_seconds, function(){});
shoot_pause = time_source_create(time_source_game, 0.5, time_source_units_seconds, function(){
	speed = enemy_speed
	image_speed = 1;});


function enemy_shoot_timer(period, bullet, range){
	
	time_source_reconfigure(shoot_timer, period, time_source_units_seconds, function(range, bullet){
		if (instance_exists(obj_tower)){
			cur_tower = instance_nearest(x, y, obj_tower);
			if (cur_tower.released == true && distance_to_object(cur_tower) < range && is_hunting == true){
				speed = 0;
				image_speed = 0;
				time_source_start(shoot_pause);
				instance_create_layer(x, y, "Instances", bullet);
			}
		}
	}, [range, bullet], -1); // timer to shoot tower every period seconds
	
	time_source_start(shoot_timer);
}

enemy_shoot_timer(2, obj_beetle_bullet, 250);