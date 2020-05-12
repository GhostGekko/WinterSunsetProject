display_set_gui_size(view_wport[0], view_hport[0]);

vw = view_wport[0]; // gets view width
vh = view_hport[0]; //gets view height

if (global.view && instance_exists(obj_player))
{
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0,0,vw,vw,0);
	
	draw_set_alpha(1);
	draw_sprite(drawMe, 1, vw/2, vh/2);
	
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_text(vw/2, vh*(9/10), writeText);
}