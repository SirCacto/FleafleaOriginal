///Ladybug Gardens Intro

if (room = LadybugGardens){
instance_deactivate_object(o_Trigger);
o_Marta.movable = 1;
audio_play_sound(sou_KeyPickup, 1, false, 1, 0, 1, 1);
instance_deactivate_object(o_FleafleaCUTSCENE);
}

