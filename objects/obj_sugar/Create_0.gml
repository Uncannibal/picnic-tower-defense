destroy_timer = time_source_create(time_source_game, 16, time_source_units_seconds, function(){instance_destroy()});
fade_timer = time_source_create(time_source_game, 12, time_source_units_seconds, function(){image_alpha = 0.35;});

time_source_start(destroy_timer);
time_source_start(fade_timer);

value = 5 + ceil(random(10));
image_angle = floor(random(360));
var scale = 0.5 + (value * 0.05);
image_xscale = scale;
image_yscale = scale;
