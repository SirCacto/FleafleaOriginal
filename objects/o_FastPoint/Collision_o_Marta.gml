///Destroy on Contact

if (o_Marta.hsp != 0){
o_Marta.x += (20 * ((o_Marta.hsp)/abs(o_Marta.hsp)));
instance_destroy();


//o_Marta.fast = 1;
audio_play_sound(sou_SSStage1, 1, false, 1, 0, 1, 1);
o_Marta.ssstage = max(o_Marta.ssstage, 1);
}





