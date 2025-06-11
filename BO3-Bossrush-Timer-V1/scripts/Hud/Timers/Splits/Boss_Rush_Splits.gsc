function bossrushsplits()
{
        level flag::wait_till("start_zombie_round_logic");
        level.PlayerCount = GetPlayers().size;
	switch(level.script){
		case "zm_zod":
                        if (level.PlayerCount == 1) {
                                thread shadowsofevilbossrushsolo();
                                level.shadowmanbossrushsplit = 12.82;
                                level.gatewormbossrushsplit = 96.65;
                        }
                        else if (level.PlayerCount == 2){
                                thread shadowsofevilbossrushduo();
                                level.shadowmanbossrushsplit = 12.77;
                                level.gatewormbossrushsplit = 59;
                        }
                        else if (level.PlayerCount == 3){
                                thread shadowsofevilbossrushtrio();
                                level.shadowmanbossrushsplit = 13.34;
                                level.gatewormbossrushsplit = 57.98;
                        }
                        else if (level.PlayerCount == 4){
                                thread shadowsofevilbossrushquad();
                                level.shadowmanbossrushsplit = 14.02;
                                level.gatewormbossrushsplit = 42.73;
                        }
		break;

		case "zm_castle":
                        if (level.PlayerCount == 1) {
                                thread dereisendrachebossrushsolo();
                                level.keeperbossrushsplit = 69.91;
                        }
                        else if (level.PlayerCount == 2){
                                thread dereisendrachebossrushduo();
                                level.keeperbossrushsplit = 70.05;
                        }
                        else if (level.PlayerCount == 3){
                                thread dereisendrachebossrushtrio();
                                level.keeperbossrushsplit = 70.11;
                        }
                        else if (level.PlayerCount == 4){
                                thread dereisendrachebossrushquad();
                                level.keeperbossrushsplit = 70.48;
                        }
		break;

		case "zm_island":
			if (level.PlayerCount == 1) {
                                thread zetsubounoshimabossrushsolo();
                                level.takeobossrushsplit = 198.55;
                                level.spiderqueenbossrushsplit = 26.93;
                        }
                        else if (level.PlayerCount == 2){
                                thread zetsubounoshimabossrushduo();
                                level.takeobossrushsplit = 198.50;
                                level.spiderqueenbossrushsplit = 28.90;
                        }
                        else if (level.PlayerCount == 3){
                                thread zetsubounoshimabossrushtrio();
                                level.takeobossrushsplit = 201.05;
                                level.spiderqueenbossrushsplit = 27.95;
                        }
                        else if (level.PlayerCount == 4){
                                thread zetsubounoshimabossrushquad();
                                level.takeobossrushsplit = 199.20;
                                level.spiderqueenbossrushsplit = 27.98;
                        }
		break;

		case "zm_stalingrad":
			if (level.PlayerCount == 1){
                                thread gorodkrovibossrushsolo();
                                level.nikolaibossrushsplit = 180.76;
                        }
                        else if (level.PlayerCount == 2){
                                thread gorodkrovibossrushduo();
                                level.nikolaibossrushsplit = 197.62;
                        }
                        else if (level.PlayerCount == 3){
                                thread gorodkrovibossrushtrio();
                                level.nikolaibossrushsplit = 189.48;
                        }
                        else if (level.PlayerCount == 4){
                                thread gorodkrovibossrushquad();
                                level.nikolaibossrushsplit = 192.01;
                        }
		break;

		case "zm_genesis":
			if (level.PlayerCount == 1) {
                                thread revelationsbossrushsolo();
                                level.shadowmanrevelationsbossrush = 34.67;
                        }
                        else if (level.PlayerCount == 2){
                                thread revelationsbossrushduo();
                                level.shadowmanrevelationsbossrush = 32.97;
                        }
                        else if (level.PlayerCount == 3){
                                thread revelationsbossrushtrio();
                                level.shadowmanrevelationsbossrush = 34.85;
                        }
                        else if (level.PlayerCount == 4){
                                thread revelationsbossrushquad();
                                level.shadowmanrevelationsbossrush = 31.79;
                        }
		break;
	}
}