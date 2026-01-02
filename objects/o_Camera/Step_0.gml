//Updating Destination

if (global.characters = 1)
{
	xTo = follow.x;
	yTo = follow.y;

}
else{
xTo = ((o_Marta.x + o_Fleaflea.x)/2);
yTo = ((o_Marta.y + o_Fleaflea.y)/2);
}


//Updating Positions



x += (xTo-x) / 25;
y += (yTo-y) / 25;




camera_set_view_pos (cam, x - view_w_half, y - view_h_half);


x = clamp (x, view_w_half, room_width - view_w_half);
y = clamp (y, view_h_half, room_height - view_h_half);

