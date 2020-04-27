depth = 1;

if (global.lockRed) {
	instance_deactivate_object(instance_nearest(x,y,obj_door));
}
else {
	instance_destroy(obj_lockRed);
}