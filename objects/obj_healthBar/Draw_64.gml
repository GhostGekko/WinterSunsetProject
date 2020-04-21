display_set_gui_size(view_wport[0], view_hport[0]);

if (instance_exists(obj_player)) {
	draw_set_halign(fa_center);
	draw_set_color(c_black);
	draw_rectangle(20, 20, 115, 60, false);
	draw_sprite(spr_heart, 0, 50, 40)
	draw_set_color(c_white);
	draw_text(80, 30, " x " +string(global.playerHealth));
}
