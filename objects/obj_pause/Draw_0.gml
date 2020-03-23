var vx = camera_get_view_x(view_camera[0]);	//gets x coordinate of viewport upper right corner
var vy = camera_get_view_y(view_camera[0]);	//gets y coordinate of viewport upper right corner
	
var vw = camera_get_view_width(view_camera[0]); // gets view width
var vh = camera_get_view_height(view_camera[0]); //gets view height

if (global.pause && !(room == rm_startScreen))
{
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0,0,room_width,room_height,0);
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	draw_set_alpha(1);
	if (!window_get_fullscreen()){
		draw_text(vx + 150, vy + 20, "Press F1 for Fullscreen");
	}
	else{
		draw_text(vx + 150, vy + 20, "Press F1 for Windowed");
	}
	draw_text(vx + vw/2, vy + 50,"Game Paused");
}