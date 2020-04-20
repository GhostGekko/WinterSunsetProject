with (other) {
	if (keyboard_check_pressed(ord("E")) && monHealth != 0 && other.seeable){
			monHealth -= 1;
	}
	if (monHealth == 0) {
		instance_destroy();
	}
}