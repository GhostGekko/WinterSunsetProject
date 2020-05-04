if (place_meeting(x,y,obj_player) && keyboard_check_pressed(ord("E"))){
	global.keyGreen = true;
	audio_play_sound(snd_keyPickup, 20, false);
	instance_destroy(obj_keyGreen);
}