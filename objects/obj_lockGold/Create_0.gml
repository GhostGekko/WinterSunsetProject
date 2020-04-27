depth = 1;

if (global.lockGold) {
	instance_deactivate_object(instance_nearest(x,y,obj_door));
}
else {
	instance_destroy(obj_lockGold);
}