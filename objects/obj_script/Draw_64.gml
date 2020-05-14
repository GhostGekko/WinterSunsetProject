display_set_gui_size(view_wport[0], view_hport[0]);

vw = view_wport[0]; // gets view width
vh = view_hport[0]; //gets view height

queen = make_color_rgb(255,0,255);
baxter = make_color_rgb(156,53,39);
maurice = make_color_rgb(183,188,235);

draw_set_halign(fa_center);

if (room == rm_pathToCastle && global.talking == 0) {
	draw_text_color(vw/2, vh/4, "Someone! Help!", queen, queen,queen,queen,1);
}

if (global.talking == 1) {
	draw_text_color(vw/2, vh/4, "That’s the Queen! Whats going on??", maurice, maurice,maurice,maurice,1);
}

//-----------------------------

if ((room == rm_princesChamber && global.talking == 2)) {
	draw_text_color(vw/2, vh/4, "Milady!", maurice, maurice,maurice,maurice,1);
}

if ((global.talking == 3)) {
	draw_text_color(vw/2, vh/4, "Who are you?", queen, queen,queen,queen,1);
}
	
if ((global.talking == 4)) {
	draw_text_color(vw/2, vh/4, "I’m Maurice, a squire. Are you all alright?", maurice, maurice,maurice,maurice,1);
}

if ((global.talking == 5)) {
	draw_text_color(vw/2, vh/4, "I’m not hurt, but we have to go!", queen, queen,queen,queen,1);
}

if (global.talking == 6) {
	draw_text_color(vw/2, vh/4, "Why are you in such a rush? We were just getting acquainted.", baxter, baxter,baxter,baxter,1);
}

if ((global.talking == 7)) {
	draw_text_color(vw/2, vh/4, "Step away, you’re the wizard that cursed this castle.", maurice, maurice,maurice,maurice,1);
}

if (global.talking == 8) {
	draw_text_color(vw/2, vh/4, "I am no wizard, I’m much more than that, Maurice. /n I am Baxter, the heir to this kingdom. /n You will not escape.", baxter, baxter,baxter,baxter,1);
}

if ((global.talking == 9)) {
	draw_text_color(vw/2, vh/4, "I won’t let him hurt you milady!", maurice, maurice,maurice,maurice,1);
}

//-----------------------------

if ((global.princeDead && global.talking == 10)) {
	draw_text_color(vw/2, vh/4, "Let’s go, the magic is deteriorating!", maurice, maurice,maurice,maurice,1);
}

//-----------------------------

if ((room == rm_escaped && global.talking == 11)) {
	draw_text_color(vw/2, vh/4, "Thank you, you saved my life!", queen, queen,queen,queen,1);
}

if ((global.talking == 12)) {
	draw_text_color(vw/2, vh/4, "It’s an honor to protect you and the kingdom.", maurice, maurice,maurice,maurice,1);
}