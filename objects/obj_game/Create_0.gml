obj_game.wave_number = 0;
is_wave_over = true;
just_started_wave = false;

spawn_ant = time_source_create(time_source_game, 1, time_source_units_seconds, function(){});
spawn_spider = time_source_create(time_source_game, 1, time_source_units_seconds, function(){});
spawn_beetle = time_source_create(time_source_game, 1, time_source_units_seconds, function(){});
spawn_wasp = time_source_create(time_source_game, 1, time_source_units_seconds, function(){});
spawn_snail = time_source_create(time_source_game, 1, time_source_units_seconds, function(){});
spawn_bee = time_source_create(time_source_game, 1, time_source_units_seconds, function(){});

function valid_start(wave_number){
	return (is_wave_over == false && just_started_wave == true 
	&& wave_number == wave_number)
}

function spawn_logic(){
	spawn_x = 0;
	spawn_y = 0;
	
	side = random(2);
	if (side >= 1){
		spawn_x = choose(-100, room_width + 100);
		spawn_y = random(room_height);
	}else{
		spawn_x = random(room_width);
		spawn_y = choose(-100, room_height + 100);
	}
	return [spawn_x, spawn_y];	
}

function spawn_enemy(layer, timer, object, number, period){
	time_source_reconfigure(timer, period, time_source_units_seconds, function(layer, obj){
		coords = spawn_logic();
		spawn_x = coords[0];
		spawn_y = coords[1];
		instance_create_layer(spawn_x, spawn_y, layer, obj);
	}, [layer, object], number);
	
	time_source_start(timer);
}