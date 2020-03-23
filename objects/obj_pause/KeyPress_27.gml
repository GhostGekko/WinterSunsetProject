if (global.pause == 0)
{
	global.pause = 1;
	 instance_deactivate_all(1);
}
else
{
	global.pause = 0;
	layer_destroy_instances("Pause");
	instance_activate_all();
}

