//levels :3333!!!!

//spawn_enemy("Instances", spawn_ant, obj_ant, 100, 1);
//spawn_enemy("Instances", spawn_spider, obj_spider, 100, 1);
//spawn_enemy("Instances", spawn_beetle, obj_beetle, 100, 1);
//spawn_enemy("Instances", spawn_wasp, obj_wasp, 100, 1);
//spawn_enemy("Instances", spawn_snail, obj_snail, 100, 1);
//spawn_enemy("Instances", spawn_bee, obj_bee, 100, 1);

if (valid_start(1)){
	game_started = true;
	spawn_enemy("Instances", spawn_ant, obj_ant, 10, 1);
	just_started_wave = false;
}
else if (valid_start(2)){
	spawn_enemy("Instances", spawn_ant, obj_ant, 20, 0.75);
	just_started_wave = false;
	obj_honey_button.unlock_button(spr_honey_button);
}
else if (valid_start(3)){
	spawn_enemy("Instances", spawn_ant, obj_ant, 15, 0.75);
	spawn_enemy("Instances", spawn_spider, obj_spider, 5, 1);
	just_started_wave = false;
}
else if (valid_start(4)){
	spawn_enemy("Instances", spawn_ant, obj_ant, 20, 0.50);
	spawn_enemy("Instances", spawn_spider, obj_spider, 15, 1);
	just_started_wave = false;
}
else if (valid_start(5)){
	spawn_enemy("Instances", spawn_ant, obj_ant, 25, 0.50);
	spawn_enemy("Instances", spawn_spider, obj_spider, 20, 0.75);
	just_started_wave = false;
}
else if (valid_start(6)){
	spawn_enemy("Instances", spawn_ant, obj_ant, 30, 0.50);
	spawn_enemy("Instances", spawn_spider, obj_spider, 30, 0.75);
	just_started_wave = false;
}
else if (valid_start(7)){
	spawn_enemy("Instances", spawn_ant, obj_ant, 40, 0.50);
	spawn_enemy("Instances", spawn_spider, obj_spider, 35, 0.75);
	obj_sandwich_button.unlock_button(spr_sandwich_button);
	just_started_wave = false;
}
else if (valid_start(8)){
	spawn_enemy("Instances", spawn_ant, obj_ant, 50, 0.50);
	spawn_enemy("Instances", spawn_spider, obj_spider, 20, 0.75);
	spawn_enemy("Instances", spawn_beetle, obj_beetle, 15, 1);
	just_started_wave = false;
}
else if (valid_start(9)){
	spawn_enemy("Instances", spawn_ant, obj_ant, 60, 0.35);
	spawn_enemy("Instances", spawn_spider, obj_spider, 25, 0.75);
	spawn_enemy("Instances", spawn_beetle, obj_beetle, 15, 1);
	just_started_wave = false;
}
else if (valid_start(10)){
	spawn_enemy("Instances", spawn_ant, obj_ant, 75, 0.35);
	spawn_enemy("Instances", spawn_spider, obj_spider, 30, 1);
	spawn_enemy("Instances", spawn_beetle, obj_beetle, 25, 0.5);
	just_started_wave = false;
}
else if (valid_start(11)){
	spawn_enemy("Instances", spawn_ant, obj_ant, 50, 0.50);
	spawn_enemy("Instances", spawn_spider, obj_spider, 20, 0.75);
	spawn_enemy("Instances", spawn_beetle, obj_beetle, 30, 1);
	just_started_wave = false;
}
else if (valid_start(12)){
	spawn_enemy("Instances", spawn_ant, obj_ant, 100, 0.25);
	spawn_enemy("Instances", spawn_spider, obj_spider, 10, 2);
	just_started_wave = false;
}
else if (valid_start(13)){
	spawn_enemy("Instances", spawn_spider, obj_spider, 75, 0.35);
	just_started_wave = false;
}
else if (valid_start(14)){
	spawn_enemy("Instances", spawn_beetle, obj_beetle, 50, 0.4);
	just_started_wave = false;
}
else if (valid_start(15)){
	spawn_enemy("Instances", spawn_ant, obj_ant, 50, 0.50);
	spawn_enemy("Instances", spawn_spider, obj_spider, 20, 0.75);
	spawn_enemy("Instances", spawn_beetle, obj_beetle, 15, 1);
	obj_chip_button.unlock_button(spr_chip_button);
	just_started_wave = false;
}
else if (valid_start(16)){
	spawn_enemy("Instances", spawn_ant, obj_ant, 30, 0.50);
	spawn_enemy("Instances", spawn_wasp, obj_wasp, 15, 1);
	just_started_wave = false;
}
else if (valid_start(17)){
	spawn_enemy("Instances", spawn_ant, obj_ant, 50, 0.50);
	spawn_enemy("Instances", spawn_spider, obj_spider, 30, 0.75);
	spawn_enemy("Instances", spawn_beetle, obj_beetle, 20, 1);
	spawn_enemy("Instances", spawn_wasp, obj_wasp, 10, 1);
	just_started_wave = false;
}
else if (valid_start(18)){
	spawn_enemy("Instances", spawn_spider, obj_spider, 40, 0.75);
	spawn_enemy("Instances", spawn_beetle, obj_beetle, 30, 1);
	spawn_enemy("Instances", spawn_wasp, obj_wasp, 30, 1);
	just_started_wave = false;
}
else if (valid_start(19)){
	spawn_enemy("Instances", spawn_ant, obj_ant, 50, 0.25);
	spawn_enemy("Instances", spawn_beetle, obj_beetle, 5, 1);
	spawn_enemy("Instances", spawn_wasp, obj_wasp, 30, 1);
	just_started_wave = false;
}
else if (valid_start(20)){
	spawn_enemy("Instances", spawn_ant, obj_ant, 50, 0.50);
	spawn_enemy("Instances", spawn_spider, obj_spider, 20, 0.75);
	spawn_enemy("Instances", spawn_beetle, obj_beetle, 15, 1);
	spawn_enemy("Instances", spawn_wasp, obj_wasp, 15, 1);
	obj_soda_button.unlock_button(spr_soda_button);
	just_started_wave = false;
}
else if (valid_start(21)){
	spawn_enemy("Instances", spawn_snail, obj_snail, 30, 2);
	just_started_wave = false;
}
else if (valid_start(22)){
	spawn_enemy("Instances", spawn_spider, obj_spider, 60, 0.5);
	spawn_enemy("Instances", spawn_beetle, obj_beetle, 30, 1);
	spawn_enemy("Instances", spawn_snail, obj_snail, 15, 2);
	just_started_wave = false;
}
else if (valid_start(23)){
	spawn_enemy("Instances", spawn_ant, obj_ant, 80, 0.25);
	spawn_enemy("Instances", spawn_spider, obj_spider, 40, 0.5);
	spawn_enemy("Instances", spawn_beetle, obj_beetle, 20, 1);
	spawn_enemy("Instances", spawn_snail, obj_snail, 10, 2);
	just_started_wave = false;
}
else if (valid_start(24)){
	spawn_enemy("Instances", spawn_ant, obj_ant, 50, 0.50);
	spawn_enemy("Instances", spawn_spider, obj_spider, 20, 0.75);
	spawn_enemy("Instances", spawn_beetle, obj_beetle, 15, 1);
	spawn_enemy("Instances", spawn_wasp, obj_wasp, 15, 1);
	spawn_enemy("Instances", spawn_snail, obj_snail, 15, 1);
	just_started_wave = false;
}
else if (valid_start(25)){
	spawn_enemy("Instances", spawn_ant, obj_ant, 50, 0.50);
	spawn_enemy("Instances", spawn_spider, obj_spider, 20, 0.75);
	spawn_enemy("Instances", spawn_beetle, obj_beetle, 15, 1);
	spawn_enemy("Instances", spawn_wasp, obj_wasp, 15, 1);
	spawn_enemy("Instances", spawn_snail, obj_snail, 15, 1);
	just_started_wave = false;
}

is_wave_over = wave_over();

