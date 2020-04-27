depth = 1;

if (global.lockBlack) {
	instance_deactivate_object(instance_nearest(x,y,obj_door));
}
else {
	instance_destroy(obj_lockBlack);
}