var vx = camera_get_view_x(view_camera[0]);	//gets x coordinate of viewport upper right corner
var vy = camera_get_view_y(view_camera[0]);	//gets y coordinate of viewport upper right corner
	
var vw = camera_get_view_width(view_camera[0]); // gets view width
var vh = camera_get_view_height(view_camera[0]); //gets view height

if (global.pause && !(room == rm_startScreen)){
	instance_create_depth(vx + vw/2, vy + vh/2, -2, obj_save);
}
else{
	instance_destroy();
}