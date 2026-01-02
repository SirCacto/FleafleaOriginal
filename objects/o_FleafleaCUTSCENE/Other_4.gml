audio_stop_all()
global.hartrov = 0;

key = 0;

o_Camera.x = x;
o_Camera.y = y;


if (global.checkpoint = 39){
	vsp = -5;
global.checkpoint = 0;
o_Fleaflea.key = 1;}
if (global.checkpoint = 1){
x = o_Checkpoint1.x;
y = o_Checkpoint1.y;
o_Camera.x = o_Checkpoint1.x;
o_Camera.y = o_Checkpoint1.y;
}

if (global.clear = 1){
global.clear = 0;
audio_play_sound(sou_KeyPickup, 1, false, 1, 0, 1, 1);}


if (global.respawn = 1){
	global.respawn = 0;
	audio_play_sound(sou_Respawn, 1, false, 1, 0, 1, 1);}

///Acrobat Heights
if (room = AcrobatHeights){
	audio_play_sound(sou_RivetedTreegazing, 1, true, 1, 0, 1, 1);};

///Blossom Gardens
if (room = BlossomGardens){
	if (global.checkpoint = 0){
	movable = 0;
	}
	audio_play_sound(sou_RivetedTreegazing, 1, true, 1, 0, 1, 1);
	///audio_play_sound(sou_Hartrov, 1, true, 1, 0, 1, 1);
///	global.hartrov = 1;
};
	
///Demo Start Room
if (room = DemoStartRoom){
	audio_play_sound(sou_RomanceInItalyPR, 1, true, 1, 0, 1, 1);};

///Plain Plains
if (room = PlainPlains){
	audio_play_sound(sou_RivetedTreegazing, 1, true, 1, 0, 1, 1);};
	
///Tower 1
if (room = Tower1){
	audio_play_sound(sou_DSPR, 1, true, 1, 0, 1, 1);};
	
//Bouncing Plains
if (room = BouncingPlains){
	audio_play_sound(sou_RomanceInItalyPR, 1, true, 1, 0, 1, 1);};
	
//Goopy Plains
if (room = GoopyPlains){
	goopycount = 5;
	audio_play_sound(sou_RomanceInItalyPR, 1, true, 1, 0, 1, 1);};
	
//Crystal Heights
if (room = CrystalHeights){
	audio_play_sound(sou_RivetedTreegazing, 1, true, 1, 0, 1, 1);};
	
///Tower 2
if (room = Tower2){
	audio_play_sound(sou_DSPR, 1, true, 1, 0, 1, 1);
	instance_deactivate_object(o_SuperShoe);
	powerup = 2;
	vsp = -20;
}

///Ladybug Gardens
if (room = LadybugGardens){
	audio_play_sound(sou_RivetedTreegazing, 1, true, 1, 0, 1, 1);
	if (global.checkpoint = 0){
	movable = 0;
	key = 0;

	key_right = 1;
	
	key_z = 1;
	key_space = 1;
	key_x = 1;

}




else{
instance_deactivate_object(o_FleafleaCUTSCENE);
	
	audio_play_sound(sou_RivetedTreegazing, 1, true, 1, 0, 1, 1);};
	
///Ladybug Heights

}