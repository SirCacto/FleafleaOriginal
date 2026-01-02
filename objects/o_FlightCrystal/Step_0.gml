///Sprite


if (o_Fleaflea.powerup =! 1){
sprite_index = s_FlightCrystal1;
}
else{
if (used = 0 && (o_Fleaflea.powerup = 1)){
	sprite_index = s_FlightCrystal3;
}
else{
	if (o_Fleaflea.powerup = 1){
sprite_index = s_FlightCrystal2;
	}
	else
	{sprite_index = s_FlightCrystal1;}
}
}


///Recharge

if o_Fleaflea.grounded = 1{
used = 0;}



