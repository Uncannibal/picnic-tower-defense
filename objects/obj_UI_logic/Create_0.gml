sugar_value = 200;
depth = -10000


function draw_sugar() {
    sugar_text_x = display_get_width()/2 + 200;
	sugar_text_y = 30;

	draw_set_font(font_psilly_48);
	draw_set_alpha(1);
    draw_set_color(c_white);
	draw_text_transformed(sugar_text_x, sugar_text_y, "Sugar!: " + string(sugar_value), 1, 1, 0);
}

function draw_waves() {
    wave_text_x = display_get_width()/2 + 200;
	wave_text_y = 950;

	draw_set_font(font_psilly_48);
	draw_set_alpha(1);
    draw_set_color(c_white);
	draw_text_transformed(wave_text_x, wave_text_y, "Wave Number: " + string(obj_game.wave_number), 1, 1, 0);
	
	if (obj_game.inf_mode == true){
		draw_text_transformed(wave_text_x + 125, wave_text_y + 60, "Infinite Mode", 0.75, 0.75, 0);
	}
}
function draw_health(){
	if (instance_exists(obj_basket)){
		health_text_x = display_get_width()/2;
		health_text_y = display_get_height()/2;

		draw_set_font(font_psilly_48);
	    draw_set_color(#51231e);
		draw_set_alpha(1);
		if (obj_basket.basket_health > 99){
			draw_text_transformed(health_text_x - 30, health_text_y, string(obj_basket.basket_health), 0.75, 0.75, 0);
		} else if (obj_basket.basket_health > 9) {
			draw_text_transformed(health_text_x - 20, health_text_y, string(obj_basket.basket_health), 0.75, 0.75, 0);
		} else {
			draw_text_transformed(health_text_x - 10, health_text_y, string(obj_basket.basket_health), 0.75, 0.75, 0);
		}
	}
}

