///Dive

if (o_Marta.dive = 1){
		audio_play_sound(sou_BreakableWall, 1, false, 1, 0, 1, 1);
		instance_destroy();
}


else{
	global.respawn = 1;
	room_restart();
	}






