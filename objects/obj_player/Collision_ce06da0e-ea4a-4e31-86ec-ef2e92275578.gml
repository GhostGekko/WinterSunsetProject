with (other) {
	if (other.key_attack && trainingHealth != 0 && other.seeable){
			trainingHealth -= 1;
	}
	if (trainingHealth == 0) {
		instance_destroy();
	}
}