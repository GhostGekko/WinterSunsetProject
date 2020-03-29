with (other) {
	if (keyboard_check_pressed(ord("E")) && trainingHealth != 0){
			trainingHealth -= 1;
	}
	if (trainingHealth == 0) {
		instance_destroy();
	}
}