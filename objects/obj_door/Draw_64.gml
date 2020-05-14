if (room == rm_princesChamber && !global.princeDead){
	exit;
}

display_set_gui_size(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));
	
vw = view_wport[0]; // gets view width
vh = view_hport[0]; //gets view height

if (place_meeting(x,y,obj_player)){
	draw_set_alpha(1);
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	draw_text(vw/2, 60, "Press enter to" + "\ngo to the next room");
//	draw_text(vw/2, 100, "Time: " + string(fadeTime));
}