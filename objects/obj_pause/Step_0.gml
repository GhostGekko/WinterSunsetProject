getRoomHeight = room_height;
getRoomWidth = room_width;

if (global.pause && !(room == rm_startScreen)){
	instance_create_depth(global.vx + global.vw/4, global.vy + global.vh/2 - 75, -2, obj_save);
	instance_create_depth(global.vx + global.vw/4, global.vy + global.vh/2 + 75, -2, obj_load);
}
else{
	instance_destroy(obj_save);
	instance_destroy(obj_load);
} 