if (movable = 1){

///Movement

key_left = keyboard_check(vk_left) || keyboard_check (ord("A"));
key_right = keyboard_check (vk_right) || keyboard_check (ord("D"));
key_jump = keyboard_check_pressed (vk_up) || keyboard_check (ord("W"));
key_down = keyboard_check_pressed (vk_down) || keyboard_check (ord("S"));
key_z = keyboard_check_pressed (ord("Z"));
key_space = keyboard_check_pressed(vk_space);
key_x = keyboard_check (ord("X")) || keyboard_check (vk_shift);

}

var move = key_right - key_left;
hsp = move * walksp;
oldhsp = hsp;

if (powerup != 2){ssstage = 0}


if (key_x){
	if (ssstage = 2){hsp *= 2 +(0.5 * fast)}
	if (ssstage = 1){hsp *= 1.9}
	else{
hsp *= 1.5}}
else{
hsp = oldhsp};

//Horizontal Collisons

if (place_meeting (x+hsp, y, o_Wall)) {
while (! place_meeting (x+sign(hsp), y, o_Wall)) {
x = x + sign(hsp); }
hsp = 0; }
x = x + hsp; 

//Vertical Collisions

if (place_meeting (x, y+vsp, o_Wall))

{
while (! place_meeting (x, y+sign(vsp), o_Wall)) {
y = y + sign(vsp); }
vsp = 0;
grounded = 1;}
else
{grounded = 0;}

y = y + vsp;



//Jumping


if (powerup = 1) && (key_jump) && (jumpable = 2){
	jumpable = 3;
	vsp = -7;
	if (global.hartrov = 1){
	audio_play_sound(sou_HartrovJ3, 1, false, 1, 0, 1, 1);}
	else{
	audio_play_sound(sou_FleafleaJ3, 1, false, 1, 0, 1, 1);
}}


if (key_jump) && (jumpable = 1){
vsp = -7;
jumpable = 2;
if (global.hartrov = 1){
	audio_play_sound(sou_HartrovJ2, 1, false, 1, 0, 1, 1);
}
else{
audio_play_sound(sou_FleafleaJ2, 1, false, 1, 0, 1, 1);
}}




if (place_meeting (x, y+1, o_Wall)){
jumpable = 0};

if (place_meeting (x, y+1, o_Wall)) && (key_jump) && (jumpable = 0)
{
	
vsp = -7;
jumpable = 1;

if (global.hartrov = 1){
		audio_play_sound(sou_HartrovJ1, 1, false, 1, 0, 1, 1);
	}
	else{
audio_play_sound(sou_FleafleaJ1, 1, false, 1, 0, 1, 1);
	}
}
vsp = vsp + grav;






///Animations

if (!place_meeting (x, y + 1, o_Wall))
{
	if (!(jumpable = 2)){
		if (powerup = 0){
		sprite_index = s_FleafleaJ;}
		if (powerup = 1){
		sprite_index = s_FleafleaIWJ}
		if (powerup = 2){
		sprite_index = s_FleafleaSSJ}}
	else{
		if (powerup = 0){
		sprite_index = s_FleafleaDJ;}
		if (powerup = 1){
		sprite_index = s_FleafleaIWJ;}
		if (powerup = 2){
		sprite_index = s_FleafleaSSDJ;}}
	if (jumpable = 3){
		if (powerup = 0){sprite_index = s_FleafleaDJ;}
		if (powerup = 1){sprite_index = s_FleafleaIWDJ;}}
	image_speed = 0;
	if (sign (vsp) > 0) {
		if (powerup = 0){sprite_index = s_FleafleaJ;}
		if (powerup = 1){sprite_index = s_FleafleaIWJ;}
		if (powerup = 2){sprite_index = s_FleafleaSSJ;}
		if (jumpable != 2) && (jumpable != 3) && (jumpable != 4){jumpable = 1;}
		image_index = 1;} else image_index = 0;
}

else
{
	image_speed = 1;
	if (hsp == 0){
				fast = 0;
	if (powerup = 0)
	{sprite_index = s_Fleaflea;}
	if (powerup = 1)
	{sprite_index = s_FleafleaIW;}
	if (powerup = 2)
	{
		ssstage = 0;
		sprite_index = s_FleafleaSS;}}
	else {
		if (powerup = 0){
		sprite_index = s_FleafleaR;}
		if (powerup = 1){
		sprite_index = s_FleaFleaIWR;}
		//Super Shoe Run Changes
		if (powerup = 2)
		{if (jumpable = 0){
			if (ssstage = 0){sprite_index = s_FleafleaSSR1;}
		if (ssstage = 1){sprite_index = s_FleafleaSSR2;}
		if (ssstage = 2){sprite_index = s_FleafleaSSR3;}}}
		}
}

if (hsp != 0) image_xscale = sign(hsp);


//Super Shoes

if (key_z){
	if (powerup = 2){
if (ssstage = 0){
	if (hsp != 0){
ssstage = 1;
audio_play_sound(sou_SSStage1, 1, false, 1, 0, 1, 1);
;}}}}

if(key_space){
	if (ssstage = 1){if (hsp != 0){
ssstage = 2;
audio_play_sound(sou_SSStage2, 1, false, 1, 0, 1, 1);
}}}





//Room change (debug)
if (keyboard_check_pressed(ord("P"))){room_goto_next();}
if (keyboard_check_pressed(ord("O"))){room_goto_previous();}


//Checkpoint Debug

if (keyboard_check_pressed(ord("C"))){global.checkpoint = 0;}



/// Vertical Wall Meet


if (ssstage = 2) && (abs(hsp) > 10){


if (place_meeting(x, y+vsp, o_BreakableWall)){
vsp -= 4;
}

if (place_meeting(x, y-vsp, o_BreakableWall)){
vsp -= 1;
}
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

///Special Trampoline

if (place_meeting(x, y+vsp, o_SpecialTrampoline)){
	audio_play_sound(sou_SSStage2, 1, false, 1, 0, 1, 1);
vsp = -50;
instance_destroy(o_Camera);
}



//Bridges

if(vsp > 0){
instance_activate_object(o_Bridge);
}

if (vsp <= 0){
	instance_deactivate_object(o_Bridge);
}


