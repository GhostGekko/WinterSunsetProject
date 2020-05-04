with (other) {
	if (other.key_attack && monHealth != 0 && other.seeable){
			monHealth -= 1;
			audio_play_sound(snd_atkKnight, 20, false);
	}
	if (monHealth == 0) {
		audio_play_sound(snd_deadKnight, 20, false);
		instance_destroy();
	}
}