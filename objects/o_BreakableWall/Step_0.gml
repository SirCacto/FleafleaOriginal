
	//Horizontal Collisons

hsp = o_Fleaflea.hsp;
vsp = o_Fleaflea.vsp;

if (o_Fleaflea.ssstage = 2) && (abs(hsp) > 10){
if ((place_meeting (x-hsp, y, o_Fleaflea)) or (place_meeting (x+hsp, y, o_Fleaflea)) or (place_meeting (x, y+vsp, o_Fleaflea)) or (place_meeting (x, y-vsp, o_Fleaflea))) {
audio_play_sound(sou_BreakableWall, 1, false, 1, 0, 1, 1);
instance_destroy(id);
}}




if (((place_meeting (x, y+vsp, o_Marta)) or (place_meeting (x, y-vsp, o_Marta))) and (o_Marta.dive = 1)) {
audio_play_sound(sou_BreakableWall, 1, false, 1, 0, 1, 1);
instance_destroy(id);
}

if (((place_meeting (x-hsp, y, o_Marta)) or (place_meeting (x+hsp, y, o_Marta))) and ((o_Marta.dive = 1) or (o_Marta.roll = 1)))
{
	audio_play_sound(sou_BreakableWall, 1, false, 1, 0, 1, 1);
instance_destroy(id);
}



