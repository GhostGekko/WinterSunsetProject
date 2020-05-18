display_set_gui_size(view_wport[0], view_hport[0]);

if (instance_exists(obj_player)) {
	draw_set_halign(fa_center);
	draw_set_color(c_black);
	if (global.totalHealth == 5) {
		draw_rectangle(12, 20, 228, 80, false);
	}
	if (global.totalHealth > 5) {
		for(i = 1; i< global.totalHealth+1; i++) {
			draw_rectangle((40*i) - 28 , 20, (40*i) + 28, 80, false);
		}
	}
	
	draw_set_color(c_white);
	draw_text(100, 22, "Maurice Health: ");
	
	for(i = 1; i< global.totalHealth+1; i++) {
		draw_sprite(spr_deadHeart, 0, 40*i, 58);
	}
	
	for(i = 1; i< global.playerHealth+1; i++) {
		draw_sprite(spr_heart, 0, 40*i, 58);
	}
	
}