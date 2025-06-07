
kill_timer = time_source_create(time_source_game, 6, time_source_units_seconds, function(){
	instance_destroy();
});

is_hunting = true;
is_dying = false;
is_stuck = false;
direction = point_direction(x, y, room_width/2, room_height/2);
image_angle = direction;
speed = enemy_speed;

last_frame_x = x;
last_frame_y = y;