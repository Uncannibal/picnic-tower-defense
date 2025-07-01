if (place_meeting(x, y, obj_tower) == true){
	var cur_tower = instance_nearest(x, y, obj_tower);
	obj_UI_logic.sugar_value += cur_tower.price/2;
	instance_destroy(cur_tower);
}
