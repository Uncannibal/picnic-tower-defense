sugar_value = 300;
depth = -10000

function draw_sugar() {
    sugar_text_x = display_get_width()/2 + 300;
	sugar_text_y = 30;

	draw_set_font(font_psilly_48)
    draw_set_color(c_white);
	draw_text_transformed(sugar_text_x, sugar_text_y, "Sugar!: " + string(sugar_value), 1, 1, 0);
}
