display_set_gui_size(view_wport[0], view_hport[0]);

vw = view_wport[0]; // gets view width
vh = view_hport[0]; //gets view height

if (global.pause && instance_exists(obj_player))
{
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0,0,vw,vh,0);

	
	saveX = view_wport[0]*(3/8);
	saveY = view_hport[0]/3;
	
	draw_sprite(btn_save,0,saveX, saveY);
	
	x1 = saveX - sprite_get_xoffset(btn_save);
	y1 = saveY - sprite_get_yoffset(btn_save);
	x2 = x1 + sprite_get_width(btn_save);
	y2 = y1 + sprite_get_height(btn_save);
	
	mouseOverSave = (mouseX >= x1) && (mouseX <= x2) && (mouseY >= y1) && (mouseY <= y2);
	
	if (mouseOverSave) {
		draw_set_alpha(1);
		draw_sprite(btn_save,0,saveX, saveY);
	}
	
	mouseDown = mouse_check_button_pressed(mb_left);
	
	if (mouseOverSave && mouseDown) {
		game_save("SaveGame.dat");
	}
	
	draw_set_alpha(0.5);
	
	loadX = view_wport[0]*(3/8);
	loadY = view_hport[0]*(2/3);
	
	draw_sprite(btn_load,0,loadX, loadY);
	
	x1 = loadX - sprite_get_xoffset(btn_load);
	y1 = loadY - sprite_get_yoffset(btn_load);
	x2 = x1 + sprite_get_width(btn_load);
	y2 = y1 + sprite_get_height(btn_load);
	
	mouseOverLoad = (mouseX >= x1) && (mouseX <= x2) && (mouseY >= y1) && (mouseY <= y2);
	
	if (mouseOverLoad) {
		draw_set_alpha(1);
		draw_sprite(btn_load,0,loadX, loadY);
	}
	
	if (mouseOverLoad && mouseDown) {
		game_load("SaveGame.dat");
	}
	
	draw_set_alpha(1);
	
	draw_set_halign(fa_center);
	draw_set_color(c_white);

	if (!window_get_fullscreen()){
		draw_text(vw - 150, 20, "Press F1 for Fullscreen");
	}
	else{
		draw_text(vw - 150, 20, "Press F1 for Windowed");
	}
	draw_text(vw/2, 50,"Game Paused");
	
	//box for keys
	if (!global.keyBlue){
		draw_set_color(c_black);
		draw_set_alpha(0.75);
		draw_rectangle(vw/2,vh*(3/12),vw*(8/12),vh*(3/4)-16,0);
	}
	else {
		draw_set_color(c_black);
		draw_set_alpha(0.75);
		draw_rectangle(vw/2,vh*(3/12),vw*(8/12),vh*(10/12)-16,0);
	}
	
	
	draw_set_alpha(1);
	gray = make_color_rgb(153,153,153);
	brown = make_colour_rgb(106, 75, 15);
	red = make_colour_rgb(170, 32, 3);
	gold = make_colour_rgb(171, 128, 72);
	black = make_colour_rgb(61, 60, 60);
	blue = make_colour_rgb(2, 56, 239);
	
	//key variable for pause screen
	//green key
	if (global.keyGreen){
		draw_sprite(spr_keyGreen,0,vw*(17/32), vh*(4/12));
		draw_set_color(c_green);
		draw_text(vw*(19/32), vh*(4/12)-16, "Green Key");
	}
	else {
		draw_set_color(gray);
		draw_text(vw*(19/32), vh*(4/12)-16, "Green Key");
	}
	
	//brown key
	if (global.keyBrown){
		draw_sprite(spr_keyBrown,0,vw*(17/32), vh*(5/12));
		draw_set_color(brown);
		draw_text(vw*(19/32), vh*(5/12)-16, "Brown Key");
	}
	else {
		draw_set_color(gray);
		draw_text(vw*(19/32), vh*(5/12)-16, "Brown Key");
	}
	
	//red key
	if (global.keyRed){
		draw_sprite(spr_keyRed,0,vw*(17/32), vh*(6/12));
		draw_set_color(red);
		draw_text(vw*(19/32), vh*(6/12)-16, "Red Key");
	}
	else {
		draw_set_color(gray);
		draw_text(vw*(19/32), vh*(6/12)-16, "Red Key");
	}
	
	//gold key
	if (global.keyGold){
		draw_sprite(spr_keyGold,0,vw*(17/32), vh*(7/12));
		draw_set_color(gold);
		draw_text(vw*(19/32), vh*(7/12)-16, "Gold Key");
	}
	else {
		draw_set_color(gray);
		draw_text(vw*(19/32), vh*(7/12)-16, "Gold Key");
	}
	
	//black key
	if (global.keyBlack){
		draw_sprite(spr_keyBlack,0,vw*(17/32), vh*(8/12));
		draw_set_color(black);
		draw_text(vw*(19/32), vh*(8/12)-16, "Black Key");
	}
	else {
		draw_set_color(gray);
		draw_text(vw*(19/32), vh*(8/12)-16, "Black Key");
	}
	
	//blue key
	if (global.keyBlue){
		draw_sprite(spr_keyBlue,0,vw*(17/32), vh*(9/12));
		draw_set_color(blue);
		draw_text(vw*(19/32), vh*(9/12)-16, "Blue Key");
	}
}



/*
*	Fades room to black when walking from room to room
*/
with (obj_door) {
	if (fadestartClock) {
		draw_set_color(c_black);
		draw_set_alpha(1 - fadeTime/2);
		draw_rectangle(0,0, vw, vh, 0);
	}
}
draw_set_alpha(1);