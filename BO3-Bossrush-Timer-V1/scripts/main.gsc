init()
{
    level thread game_time();
    level thread fastExit();
    level thread allmaps();
    level thread Watermark();
}


on_player_connect()
{
}



on_player_spawned()
{
	self endon("spawned_player");
}