//levels :3333!!!!

//spawn_enemy("Instances", spawn_ant, obj_ant, 100, 1);
//spawn_enemy("Instances", spawn_spider, obj_spider, 100, 1);
//spawn_enemy("Instances", spawn_beetle, obj_beetle, 100, 1);
//spawn_enemy("Instances", spawn_wasp, obj_wasp, 100, 1);
//spawn_enemy("Instances", spawn_snail, obj_snail, 100, 1);
//spawn_enemy("Instances", spawn_bee, obj_bee, 100, 1);


if ((time_source_exists(spawn_ant) || time_source_exists(spawn_spider) || time_source_exists(spawn_beetle)
|| time_source_exists(spawn_wasp) || time_source_exists(spawn_snail) || time_source_exists(spawn_bee)) == 
false){
	is_wave_over = true;
}

if (valid_start(1) == true){
		spawn_enemy("Instances", spawn_ant, obj_ant, 10, 1);
		just_started_wave = false;
}

if (valid_start(2) == true){
		spawn_enemy("Instances", spawn_ant, obj_ant, 20, 0.75);
		just_started_wave = false;
}

if (valid_start(3) == true){
		obj_honey_button.unlock_button(spr_honey_button);
		spawn_enemy("Instances", spawn_ant, obj_ant, 30, 0.75);
		spawn_enemy("Instances", spawn_spider, obj_spider, 30, 1);
		just_started_wave = false;
}


