draw_self();

if (place_meeting(x,y,obj_player)){
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	draw_text(self.x, self.y-132, "Health: " + string(monHealth));
	
	if (obj_player.seeable) {
		draw_text(self.x, self.y-150, "Im gonna get you!!!");
	}
	else {
		draw_text(self.x, self.y-150, "Where did you go???");
	}
}