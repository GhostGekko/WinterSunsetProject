if (global.pause == 0)
{
	global.pause = 1;
}
else
{
	global.pause = 0;
	layer_destroy_instances("Pause");
}