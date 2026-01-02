if (room != CrystalHeights){
if (key = 1){
	global.checkpoint = 0;
	global.clear = 1;
	room_goto_next();}
}
else
{
	global.checkpoint = 0;
room_restart();
}
