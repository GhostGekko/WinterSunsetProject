with (other) {
	if (other.key_attack && princeHealth != 0 && global.princeFight){
			princeHealth -= 1;
			audio_play_sound(snd_atkKnight, 20, false);
	}
	if (princeHealth == 0) {
		global.princeDead = true;
		audio_play_sound(snd_deadKnight, 20, false);
		instance_destroy();
	}
}