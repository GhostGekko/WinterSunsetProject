display_set_gui_size(view_wport[0], view_hport[0]);
draw_set_halign(fa_center);
draw_set_color(c_white);

if (instance_exists(obj_player) && room ==rm_tutorial) {
	
	//Left
	if (pressedLeft ==false) {
	draw_text( view_wport[0]/2, view_hport[0]/4, "Press left or 'A' to move left.");
	}
	
	//Right
	else if (pressedLeft ==true && pressedRight == false) {
	draw_text( view_wport[0]/2, view_hport[0]/4, "Press right or 'D' to move right.");
	}
	
	//Space
	else if (pressedRight ==true && pressedSpace == false) {
	draw_text( view_wport[0]/2, view_hport[0]/4, "Press the spacebar to jump.");
	}
	
	//Hide
	else if (pressedSpace ==true && pressedHide == false) {
	draw_text( view_wport[0]/2, view_hport[0]/4, "Hide behind objects by holding 'H'.");
	}
	
	//Attack
	else if (pressedHide ==true && pressedAttack == false) {
	draw_text( view_wport[0]/2, view_hport[0]/4, "Pressing 'E' allows you to attack monsters, inspect objects,"
	+ "\n pick up keys and unlock doors."
	+ "\n (You can only attack when not hidden)");
	}
	
	if (tutTime < 5 && room == rm_tutorial) {
		draw_set_color(c_black);
		draw_set_alpha(1 - tutTime/5);
		draw_rectangle(0,0, view_wport[0], view_hport[0], 0);
	}
	
	draw_set_color(c_white);
	draw_set_alpha(1);
	//Collecting Items
	if (pressedAttack ==true && tutTime > 0) {
	draw_text( view_wport[0]/2, view_yport[0] +view_hport[0]/4, "Fight off the monsters and collect the hidden keys to get to the top of the tower!"
	+ "\n Good Luck!");
	}


}