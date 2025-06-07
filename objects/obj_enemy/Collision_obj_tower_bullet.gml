if (is_hunting == true && ((other.from_ground_tower != 0 && is_ground_enemy == true) 
|| (other.from_ground_tower != 1 && is_ground_enemy == false))){
	enemy_health--;
	instance_destroy(other);
}