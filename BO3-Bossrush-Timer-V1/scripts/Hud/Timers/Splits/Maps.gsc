function allmaps()
{
    level flag::wait_till("start_zombie_round_logic");
	wait 2.5;
	switch(level.script)
	{
		case "zm_zod":
			level thread bossrushsplits();
		break;
		
		case "zm_castle":
			level thread bossrushsplits();
		break;

		case "zm_island":
			level thread bossrushsplits();

		break;

		case "zm_stalingrad":
			level thread bossrushsplits();

		break;

		case "zm_genesis":
			level thread bossrushsplits();
		break;
		
		default:
		foreach(player in level.players) player iPrintLnBold("The map "+level.script);
		foreach(player in level.players) player iPrintLnBold("Doesnt have a timer");
	}

}