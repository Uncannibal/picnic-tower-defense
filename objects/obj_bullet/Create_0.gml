enemy_x = instance_nearest(x, y, enemy_type).x;
enemy_y = instance_nearest(x, y, enemy_type).y;

depth = -9999;
direction = point_direction(x, y, enemy_x, enemy_y);
image_angle = direction;
speed = bullet_speed;