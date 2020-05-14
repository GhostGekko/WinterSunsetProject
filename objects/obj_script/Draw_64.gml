display_set_gui_size(view_wport[0], view_hport[0]);

vw = view_wport[0]; // gets view width
vh = view_hport[0]; //gets view height

queen = make_color_rgb(255,0,255);
baxter = make_color_rgb(156,53,39);
draw_set_halign(fa_center);

if ((global.talking == 0) && instance_exists(obj_queen)) {
	draw_text_color(vw/2, vh/4, "Maurice, you found me!", queen, queen,queen,queen,1);
}

if (global.talking == 1) {
	draw_text_color(vw/2, vh/4, "You will not escape!", baxter, baxter,baxter,baxter,1);
}