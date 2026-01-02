///Collides with Fleaflea

if (used = 0){
	if (o_Fleaflea.powerup = 1){
used = 1;
o_Fleaflea.jumpable = max(0, o_Fleaflea.jumpable - 2);
audio_play_sound(sou_IWingPickup, 1, false, 1, 0, 1, 1);
}}







