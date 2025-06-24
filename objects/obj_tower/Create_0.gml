image_xscale = 0.75;
image_yscale = 0.75;

released = false;
is_dragging = false;

shoot_timer = time_source_create(time_source_game, 1, time_source_units_seconds, function(){});
attack_sprite_timer = time_source_create(time_source_game, 1, time_source_units_seconds, function(){});
health_check_timer = time_source_create(time_source_game, 0.5, time_source_units_seconds, function(){
	cur_enemy = instance_nearest(x, y, obj_ground_enemy);
	if(place_meeting(x, y, obj_ground_enemy) && released == true && cur_enemy.is_hunting == true){
		tower_health--;
	}
}, [], -1);


function start_shoot_timer(period, bullet, sprite, shoot_sprite, range){
	
	time_source_reconfigure(attack_sprite_timer, 0.35, time_source_units_seconds, function(spr){
		sprite_index = spr;
	}, [sprite]);
	
	time_source_reconfigure(shoot_timer, period, time_source_units_seconds, function(range, shoot_sprite, bullet){
		if(is_ground_tower == 1){
			cur_enemy = instance_nearest(x, y, obj_ground_enemy);
		}else if(is_ground_tower == 0){
			cur_enemy = instance_nearest(x, y, obj_air_enemy);
		}else{
			cur_enemy = instance_nearest(x, y, obj_enemy);
		}
		if (released == true && distance_to_object(cur_enemy) < range && cur_enemy.is_hunting == true){
			sprite_index = shoot_sprite;
			time_source_start(attack_sprite_timer);
			instance_create_layer(x, y, "Instances", bullet);
		}
	}, [range, shoot_sprite, bullet], -1); // timer to shoot a certain type of enemy every period seconds
	
	time_source_start(shoot_timer);
}

function check_valid_spot(){
	if (place_meeting(x, y, obj_tower) == true || place_meeting(x, y, obj_basket) == true
	|| place_meeting(x, y, obj_tower_button) == true || place_meeting(x, y, obj_button) == true
	|| ( 200 < x && x < 1700 && 160 < y && y < 900) == false){
		return false;
	}else{
		return true;
	}
}

time_source_start(health_check_timer);