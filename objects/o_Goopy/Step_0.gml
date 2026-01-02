///Enemy Codes

vsp = vsp + grav;

//Horizontal Collisons

if (place_meeting (x+hsp, y, o_Wall)) {
while (! place_meeting (x+sign(hsp), y, o_Wall)) {
x = x + sign(hsp); }
hsp = -hsp; }
x = x + hsp; 

//Vertical Collisions

if (place_meeting (x, y+vsp, o_Wall)) {
while (! place_meeting (x, y+sign(vsp), o_Wall)) {
y = y + sign(vsp); }
vsp = 0; }
y = y + vsp;
jumpable = 0;
hsp = (((abs(hsp))/hsp) * 7);
oldy = y;
movable = 0;


///Animations
/*
if (!place_meeting (x, y + 1, o_Wall))
{
	sprite_index = s_Enemy1J;
	image_speed = 0;
	if (sign (vsp) > 0) image_index = 1; else image_index = 0;
}

else
{
	image_speed = 1;
	if (hsp == 0)
	{sprite_index = s_Enemy1;}
	else {sprite_index = s_Enemy1R;}
}

if (hsp != 0) image_xscale = sign(hsp);
*/



///Sees Fleaflea

if ((abs(x - o_Fleaflea.x) <= 20) and ((hsp/abs(hsp)) = (o_Fleaflea.hsp/abs(o_Fleaflea.hsp)))){
	alert = 1;
}






if (alert = 1){
if (jumpable = 0){
		y -= 10;
		jumpable = 1;

	}

	if (jumpable = 1){
	

			if (y < (oldy-5)){
						if (!place_meeting (x, y+sign(vsp), o_Wall)) {
	
	if (((x - o_Fleaflea.x) / abs((x - o_Fleaflea.x))) != 0)
	{
		if movable = 0{
	hsp = ((-((x - o_Fleaflea.x) / abs((x - o_Fleaflea.x))) * 3
	
	) -((x - o_Fleaflea.x) / abs((x - o_Fleaflea.x)))     );
			movable = 1;
						}}}
		jumpable = 1;
		/*if (o_Fleaflea.hsp != 0){
			
			
	hsp = -(((abs(o_Fleaflea.hsp)) / o_Fleaflea.hsp)) * ;
	jumpable = 1;}
	*/
		}}
	
}


///Trampoline

if (place_meeting(x, y+vsp, o_Trampoline)){
if (vsp != 0)
{//vsp = -12;
	audio_play_sound(sou_TrampolineJump, 1, false, 1, 0, 1, 1);
	
	vsp = max(-15,(-(abs((vsp * -1.25) - (0.1*(abs(hsp)))))));
//vsp = (((vsp < 50) * ((vsp * -1.25) - (0.1*(abs(hsp))))) + ((vsp >= 50) * 50));
}
}