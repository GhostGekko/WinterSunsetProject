display_set_gui_size(view_wport[0], view_hport[0]);

if (instance_exists(obj_player)) {
	draw_set_halign(fa_center);
	draw_set_color(c_black);
	draw_rectangle(20, 20, 230, 60, false);
	draw_set_color(c_white);
	draw_text(110, 30, "Maurice Health: " +string(global.playerHealth));
}
