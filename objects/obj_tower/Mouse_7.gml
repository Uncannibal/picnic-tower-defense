if(check_valid_spot() == true && is_dragging == false){
	released = true;
	image_alpha = 1;
	image_blend = c_white;
}else if(check_valid_spot() == false){
	is_dragging = not is_dragging;	//resets is_dragging var if player clicks invalid spot with tower
}
