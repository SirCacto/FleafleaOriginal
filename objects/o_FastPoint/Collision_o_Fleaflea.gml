///Destroy on Contact

if (o_Fleaflea.hsp != 0){
o_Fleaflea.x += (20 * ((o_Fleaflea.hsp)/abs(o_Fleaflea.hsp)));
instance_destroy();


//o_Fleaflea.fast = 1;
audio_play_sound(sou_SSStage1, 1, false, 1, 0, 1, 1);
o_Fleaflea.ssstage = max(o_Fleaflea.ssstage, 1);
}





