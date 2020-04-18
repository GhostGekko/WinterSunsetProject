display_set_gui_size(view_wport[0], view_hport[0]);
draw_set_halign(fa_center);

if (instance_exists(obj_player)) {
	
	//Left
	if (pressedLeft ==false) {
	draw_text( view_wport[0]/2, view_yport[0] +view_hport[0]/4, "Press left or 'A' to move left!");
	}
	
	//Right
	if (pressedLeft ==true && pressedRight == false) {
	draw_text( view_wport[0]/2, view_yport[0] +view_hport[0]/4, "Press right or 'D' to move right!");
	}
	
	//Space
	if (pressedRight ==true && pressedSpace == false) {
	draw_text( view_wport[0]/2, view_yport[0] +view_hport[0]/4, "Press the spacebar to jump!");
	}
	
	//Hide
	if (pressedSpace ==true && pressedHide == false) {
	draw_text( view_wport[0]/2, view_yport[0] +view_hport[0]/4, "Hide in bushes by pressing 'H'");
	}
	
	//Attack
	if (pressedHide ==true && pressedAttack == false) {
	draw_text( view_wport[0]/2, view_yport[0] +view_hport[0]/4, "Attack mosters (or training dummies) by pressing 'E'!"
	+ "\n (You can only attack when not hidden)");
	}
	
	//Collecting Items
	if (pressedAttack ==true && tutTime > 0) {
	draw_text( view_wport[0]/2, view_yport[0] +view_hport[0]/4, "Fight off the monsters and collect the hidden keys to get to the top of the tower!"
	+ "\n (Press 'E' when you see keys to pick them up)"
	+ "\n (Press 'E' on locked doors to unlock them, but only if you have the key)"
	+ "\n Good Luck!");
	}

}