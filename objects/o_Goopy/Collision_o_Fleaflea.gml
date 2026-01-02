///Super Shoes

if (o_Fleaflea.ssstage = 1){
	if (o_Fleaflea.key_x = 1){
		audio_play_sound(sou_BreakableWall, 1, false, 1, 0, 1, 1);
		instance_destroy();
		o_Fleaflea.goopycount -= 1;
		if (o_Fleaflea.goopycount = 0){
		if (room = GoopyPlains){
			audio_play_sound(sou_KeyPickup, 1, false, 1, 0, 1, 1);
		o_Fleaflea.key = 1;}
		}
	}

}
else{
	if (o_Fleaflea.ssstage != 2){
	global.respawn = 1;
	room_restart();
	}}









