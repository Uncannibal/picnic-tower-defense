// Inherit the parent event
event_inherited();

if (enemy_health <= 0){
		time_source_destroy(shoot_timer);
	}