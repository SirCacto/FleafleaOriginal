///Intro

instance_deactivate_object(o_Trigger);

if (room = BlossomGardens){
instance_deactivate_object(o_Marta);
o_Fleaflea.movable = 1;
audio_play_sound(sou_KeyPickup, 1, false, 1, 0, 1, 1);
}







