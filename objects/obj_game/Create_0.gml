obj_game.wave_number = 0;
inf_mode = false;
inf_wave_number = 0;
is_wave_over = true;
just_started_wave = false;
game_started = false;



// Create timers for different enemy types, initially configured with empty functions
spawn_ant = time_source_create(time_source_game, 1, time_source_units_seconds, function(){});
spawn_spider = time_source_create(time_source_game, 1, time_source_units_seconds, function(){});
spawn_beetle = time_source_create(time_source_game, 1, time_source_units_seconds, function(){});
spawn_wasp = time_source_create(time_source_game, 1, time_source_units_seconds, function(){});
spawn_snail = time_source_create(time_source_game, 1, time_source_units_seconds, function(){});
spawn_bee = time_source_create(time_source_game, 1, time_source_units_seconds, function(){});


// Function to determine if it is valid to start spawning enemies for a specific wave
function valid_start(cur_wave){
    return (is_wave_over == false && just_started_wave == true && wave_number == cur_wave);
}


// Function that returns random spawn coordinates just outside the room boundaries
function spawn_logic(){
    spawn_x = 0;
    spawn_y = 0;
    side = random(2);   // Randomly choose which side enemies spawn from
    if (side >= 1){
        spawn_x = choose(-100, room_width + 100);  // Spawn off left or right of the room
        spawn_y = floor(random(room_height));             // Anywhere vertically within the room
    } else {
        spawn_x = floor(random(room_width));              // Anywhere horizontally within the room
        spawn_y = choose(-100, room_height + 100); // Spawn off top or bottom of the room
    }
    return [spawn_x, spawn_y];
}


// Function to configure and start a timer that repeatedly spawns enemies
function spawn_enemy(layer, timer, object, number, period){
    time_source_reconfigure(timer, period, time_source_units_seconds, function(layer, obj){
		// Get spawn coordinates
        coords = spawn_logic();                             
        spawn_x = coords[0];
        spawn_y = coords[1];
		
        instance_create_layer(spawn_x, spawn_y, layer, obj); 
		}, [layer, object], number);                             
	
    time_source_start(timer);                                
}

// Function that returns true if all conditions for a wave being over are met
function wave_over(){
    if (game_started == false){
        return true;
    }

    // Helper function to safely check a timer
    function timer_done(timer){
        reps = time_source_get_reps_remaining(timer);
        return (reps <= 1 || reps == undefined);
    }

    timers_done = (
        timer_done(spawn_ant) &&
        timer_done(spawn_spider) &&
        timer_done(spawn_beetle) &&
        timer_done(spawn_wasp) &&
        timer_done(spawn_snail) &&
        timer_done(spawn_bee)
    );

    enemies_cleared = (instance_number(obj_enemy) == 0);

    return (timers_done && enemies_cleared);
}



function draw_debug() {
    bg_width = 300;
    bg_height = 220;

    // Calculate top-left coordinates for right-middle alignment
    debug_x = display_get_width() - bg_width - 10; // 10 px padding from right edge
    debug_y = (display_get_height() / 2) - (bg_height / 2);
	
	draw_set_font(font_psilly_12)     
    draw_set_color(c_black);
    draw_rectangle(debug_x, debug_y, debug_x + bg_width, debug_y + bg_height, false);

    draw_set_color(c_white);
    draw_text(debug_x + 10, debug_y + 10, "is_wave_over: " + string(is_wave_over));
    draw_text(debug_x + 10, debug_y + 30, "just_started_wave: " + string(just_started_wave));
    draw_text(debug_x + 10, debug_y + 50, "wave_number: " + string(wave_number));

    draw_text(debug_x + 10, debug_y + 80, "spawn_ant reps: " + string(time_source_get_reps_remaining(spawn_ant)));
    draw_text(debug_x + 10, debug_y + 100, "spawn_spider reps: " + string(time_source_get_reps_remaining(spawn_spider)));
    draw_text(debug_x + 10, debug_y + 120, "spawn_beetle reps: " + string(time_source_get_reps_remaining(spawn_beetle)));
    draw_text(debug_x + 10, debug_y + 140, "spawn_wasp reps: " + string(time_source_get_reps_remaining(spawn_wasp)));
    draw_text(debug_x + 10, debug_y + 160, "spawn_snail reps: " + string(time_source_get_reps_remaining(spawn_snail)));
    draw_text(debug_x + 10, debug_y + 180, "spawn_bee reps: " + string(time_source_get_reps_remaining(spawn_bee)));
}



