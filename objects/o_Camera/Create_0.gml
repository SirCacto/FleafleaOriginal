///Camera

/*
if (room = Room1)
{
global.characters = 2;
}
else
{
*/
global.characters = 1;
//}




cam = view_camera [0];
if (global.characters != 2){
follow = o_Fleaflea;
}
else
{
;
}
view_w_half = camera_get_view_width (cam) * 0.5;
view_h_half = camera_get_view_height (cam) * 0.5;
xTo = xstart;
yTo = ystart;
