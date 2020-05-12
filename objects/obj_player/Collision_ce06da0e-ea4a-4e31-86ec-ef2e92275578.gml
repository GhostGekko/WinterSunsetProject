with (other) {
	if (other.key_attack && trainingHealth != 0 && global.seeable){
			trainingHealth -= 1;
			if (!audio_is_playing(snd_trainingCrack)){
				audio_play_sound(snd_trainingCrack, 20, false);
			}
	}
	if (trainingHealth == 0) {
		if (!audio_is_playing(snd_trainingBreak)){
			audio_play_sound(snd_trainingBreak, 20, false);
		}
		instance_destroy();
	}
}