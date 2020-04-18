display_set_gui_size(view_wport[0], view_hport[0]);

vw = view_wport[0]; // gets view width
vh = view_hport[0]; //gets view height

if (global.pause && instance_exists(obj_player))
{
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0,0,vw,vw,0);

	
	saveX = view_wport[0]/4;
	saveY = view_hport[0]/2;
	
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
	
	loadX = view_wport[0]/4;
	loadY = view_hport[0]/4;
	
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
		draw_text(150, 20, "Press F1 for Fullscreen");
	}
	else{
		draw_text(150, 20, "Press F1 for Windowed");
	}
	draw_text(vw/2, 50,"Game Paused");
	
	
	//key variable for pause screen
	//green key
	if (global.keyGreen){
		draw_set_color(c_green);
		draw_text(vw - vw/4, vh/2, "Green Key");
	}
	else {
		draw_set_color(c_gray);
		draw_text(vw - vw/4, vh/2, "Green Key");
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