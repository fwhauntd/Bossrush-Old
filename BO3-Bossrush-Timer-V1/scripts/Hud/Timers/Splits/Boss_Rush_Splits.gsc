function bossrushspeedrun()
{
        
        level.PlayerCount = GetPlayers().size;
	switch(level.script)
        {
		case "zm_zod":
                        if (level.PlayerCount == 1)
                        {
                                thread shadowsofevilbossrushsolo();
                                level.shadowmanbossrushsplit = 12.80;
                                level.gatewormbossrushsplit = 96.65;
                        }
                        else if (level.PlayerCount == 2)
                        {
                                thread shadowsofevilbossrushduo();
                                level.shadowmanbossrushsplit = 12.80;
                                level.gatewormbossrushsplit = 59;
                        }
                        else if (level.PlayerCount == 3)
                        {
                                thread shadowsofevilbossrushtrio();
                                level.shadowmanbossrushsplit = 13.35;
                                level.gatewormbossrushsplit = 57.95;
                        }
                        else if (level.PlayerCount == 4)
                        {
                                thread shadowsofevilbossrushquad();
                                level.shadowmanbossrushsplit = 14.00;
                                level.gatewormbossrushsplit = 42.70;
                        }
		break;

		case "zm_castle":
                        if (level.PlayerCount == 1)
                        {
                                thread dereisendrachebossrushsolo();
                                level.keeperbossrushsplit = 69.90;
                        }
                        else if (level.PlayerCount == 2)
                        {
                                thread dereisendrachebossrushduo();
                                level.keeperbossrushsplit = 70.05;
                        }
                        else if (level.PlayerCount == 3)
                        {
                                thread dereisendrachebossrushtrio();
                                level.keeperbossrushsplit = 70.10;
                        }
                        else if (level.PlayerCount == 4)
                        {
                                thread dereisendrachebossrushquad();
                                level.keeperbossrushsplit = 70.50;
                        }
		break;

		case "zm_island":
			if (level.PlayerCount == 1)
                        {
                                thread zetsubounoshimabossrushsolo();
                                level.takeobossrushsplit = 198.55;
                                level.spiderqueenbossrushsplit = 26.90;
                        }
                        else if (level.PlayerCount == 2)
                        {
                                thread zetsubounoshimabossrushduo();
                                level.takeobossrushsplit = 198.50;
                                level.spiderqueenbossrushsplit = 26.90;
                        }
                        else if (level.PlayerCount == 3)
                        {
                                thread zetsubounoshimabossrushtrio();
                                level.takeobossrushsplit = 201.05;
                                level.spiderqueenbossrushsplit = 27.95;
                        }
                        else if (level.PlayerCount == 4)
                        {
                                thread zetsubounoshimabossrushquad();
                                level.takeobossrushsplit = 199.20;
                                level.spiderqueenbossrushsplit = 27.95;
                        }
		break;

		case "zm_stalingrad":
			if (level.PlayerCount == 1)
                        {
                                thread gorodkrovibossrushsolo();
                                level.nikolaibossrushsplit = 180.75;
                        }
                        else if (level.PlayerCount == 2)
                        {
                                thread gorodkrovibossrushduo();
                                level.nikolaibossrushsplit = 197.60;
                        }
                        else if (level.PlayerCount == 3)
                        {
                                thread gorodkrovibossrushtrio();
                                level.nikolaibossrushsplit = 189.50;
                        }
                        else if (level.PlayerCount == 4)
                        {
                                thread gorodkrovibossrushquad();
                                level.nikolaibossrushsplit = 192.00;
                        }
		break;

		case "zm_genesis":
			if (level.PlayerCount == 1)
                        {
                                thread revelationsbossrushsolo();
                                level.shadowmanrevelationsbossrush = 34.65;
                        }
                        else if (level.PlayerCount == 2)
                        {
                                thread revelationsbossrushduo();
                                level.shadowmanrevelationsbossrush = 32.95;
                        }
                        else if (level.PlayerCount == 3)
                        {
                                thread revelationsbossrushtrio();
                                level.shadowmanrevelationsbossrush = 34.85;
                        }
                        else if (level.PlayerCount == 4)
                        {
                                thread revelationsbossrushquad();
                                level.shadowmanrevelationsbossrush = 31.80;
                        }
		break;
	}
}
