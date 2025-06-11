function zetsubounoshimabossrushsolo()
{
    level thread takeobossrushsolo();
    level thread spiderqueenbossrushsolo();
}

function zetsubounoshimabossrushduo()
{
    level thread takeobossrushsolo();
    level thread spiderqueenbossrushsolo();
}

function zetsubounoshimabossrushtrio()
{
    level thread takeobossrushsolo();
    level thread spiderqueenbossrushsolo();
}

function zetsubounoshimabossrushquad()
{
    level thread takeobossrushsolo();
    level thread spiderqueenbossrushsolo();
}

function takeobossrushsolo() {
    self endon("disconnect");

    if (!isdefined(level.takeobossrush)) {
        level.takeobossrush = newHudElem();
        level.takeobossrush init_hudelem("left", "top", "user_left", "user_top", 10, 5, 1.5, 0, (1,1,1), 1, &"^7Takeo: ");
    }

    level flag::wait_till("flag_init_takeo_fight");

    level.takeobossrush.alpha = 1;
    level.takeobossrush setTimerUp(0);
    level.first_tick_takeo = level.ticks;

    level flag::wait_till("takeo_freed");

    level.last_tick_takeo = level.ticks;
    level.total_ticks_takeo = level.last_tick_takeo - level.first_tick_takeo;

    takeobossrushsplit = isdefined(level.takeobossrushsplit) ? level.takeobossrushsplit : 0;

    split_time = timecalculated_ticks(level.first_tick_takeo, level.last_tick_takeo);
    diff_string = comparisoncalculate_ticks(level.first_tick_takeo, level.last_tick_takeo, takeobossrushsplit);

    level.takeobossrush setTimerUp(-1);
    level.takeobossrush setText(split_time + " (" + diff_string + "^7)");
}

function spiderqueenbossrushsolo() {
    self endon("disconnect");

    if (!isdefined(level.spiderqueenbossrush)) {
        level.spiderqueenbossrush = newHudElem();
        level.spiderqueenbossrush init_hudelem("left", "top", "user_left", "user_top", 10, 20, 1.5, 0, (1,1,1), 1, &"^7Spider: ");
    }

    wait 10;
    
    while (!whiteflash()) wait 0.05;

    level.spiderqueenbossrush.alpha = 1;
    level.spiderqueenbossrush setTimerUp(0);
    level.first_tick_spider = level.ticks - 244;

    level flag::wait_till("spider_queen_dead");
    wait 3.067;

    level.last_tick_spider = level.ticks;
    level.total_ticks_spider = level.last_tick_spider - level.first_tick_spider;

    spiderqueenbossrushsplit = isdefined(level.spiderqueenbossrushsplit) ? level.spiderqueenbossrushsplit : 0;

    split_time = timecalculated_ticks(level.first_tick_spider, level.last_tick_spider);
    diff_string = comparisoncalculate_ticks(level.first_tick_spider, level.last_tick_spider, spiderqueenbossrushsplit);

    level.spiderqueenbossrush setTimerUp(-1);
    level.spiderqueenbossrush setText(split_time + " (" + diff_string + "^7)");
}

function takeobossrushduo() {
    self endon("disconnect");

    if (!isdefined(level.takeobossrush)) {
        level.takeobossrush = newHudElem();
        level.takeobossrush init_hudelem("left", "top", "user_left", "user_top", 10, 5, 1.5, 0, (1,1,1), 1, &"^7Takeo: ");
    }

    level flag::wait_till("flag_init_takeo_fight");

    level.takeobossrush.alpha = 1;
    level.takeobossrush setTimerUp(0);
    level.first_tick_takeo = level.ticks;

    level flag::wait_till("takeo_freed");

    level.last_tick_takeo = level.ticks;
    level.total_ticks_takeo = level.last_tick_takeo - level.first_tick_takeo;

    takeobossrushsplit = isdefined(level.takeobossrushsplit) ? level.takeobossrushsplit : 0;

    split_time = timecalculated_ticks(level.first_tick_takeo, level.last_tick_takeo);
    diff_string = comparisoncalculate_ticks(level.first_tick_takeo, level.last_tick_takeo, takeobossrushsplit);

    level.takeobossrush setTimerUp(-1);
    level.takeobossrush setText(split_time + " (" + diff_string + "^7)");
}

function spiderqueenbossrushduo() {
    self endon("disconnect");

    if (!isdefined(level.spiderqueenbossrush)) {
        level.spiderqueenbossrush = newHudElem();
        level.spiderqueenbossrush init_hudelem("left", "top", "user_left", "user_top", 10, 20, 1.5, 0, (1,1,1), 1, &"^7Spider: ");
    }

    wait 10;
    
    while (!whiteflash()) wait 0.05;

    level.spiderqueenbossrush.alpha = 1;
    level.spiderqueenbossrush setTimerUp(0);
    level.first_tick_spider = level.ticks - 244;

    level flag::wait_till("spider_queen_dead");
    wait 3.067;

    level.last_tick_spider = level.ticks;
    level.total_ticks_spider = level.last_tick_spider - level.first_tick_spider;

    spiderqueenbossrushsplit = isdefined(level.spiderqueenbossrushsplit) ? level.spiderqueenbossrushsplit : 0;

    split_time = timecalculated_ticks(level.first_tick_spider, level.last_tick_spider);
    diff_string = comparisoncalculate_ticks(level.first_tick_spider, level.last_tick_spider, spiderqueenbossrushsplit);

    level.spiderqueenbossrush setTimerUp(-1);
    level.spiderqueenbossrush setText(split_time + " (" + diff_string + "^7)");
}

function takeobossrushtrio() {
    self endon("disconnect");

    if (!isdefined(level.takeobossrush)) {
        level.takeobossrush = newHudElem();
        level.takeobossrush init_hudelem("left", "top", "user_left", "user_top", 10, 5, 1.5, 0, (1,1,1), 1, &"^7Takeo: ");
    }

    level flag::wait_till("flag_init_takeo_fight");

    level.takeobossrush.alpha = 1;
    level.takeobossrush setTimerUp(0);
    level.first_tick_takeo = level.ticks;

    level flag::wait_till("takeo_freed");

    level.last_tick_takeo = level.ticks;
    level.total_ticks_takeo = level.last_tick_takeo - level.first_tick_takeo;

    takeobossrushsplit = isdefined(level.takeobossrushsplit) ? level.takeobossrushsplit : 0;

    split_time = timecalculated_ticks(level.first_tick_takeo, level.last_tick_takeo);
    diff_string = comparisoncalculate_ticks(level.first_tick_takeo, level.last_tick_takeo, takeobossrushsplit);

    level.takeobossrush setTimerUp(-1);
    level.takeobossrush setText(split_time + " (" + diff_string + "^7)");
}

function spiderqueenbossrushtrio() {
    self endon("disconnect");

    if (!isdefined(level.spiderqueenbossrush)) {
        level.spiderqueenbossrush = newHudElem();
        level.spiderqueenbossrush init_hudelem("left", "top", "user_left", "user_top", 10, 20, 1.5, 0, (1,1,1), 1, &"^7Spider: ");
    }

    wait 10;
    
    while (!whiteflash()) wait 0.05;

    level.spiderqueenbossrush.alpha = 1;
    level.spiderqueenbossrush setTimerUp(0);
    level.first_tick_spider = level.ticks - 244;

    level flag::wait_till("spider_queen_dead");
    wait 3.067;

    level.last_tick_spider = level.ticks;
    level.total_ticks_spider = level.last_tick_spider - level.first_tick_spider;

    spiderqueenbossrushsplit = isdefined(level.spiderqueenbossrushsplit) ? level.spiderqueenbossrushsplit : 0;

    split_time = timecalculated_ticks(level.first_tick_spider, level.last_tick_spider);
    diff_string = comparisoncalculate_ticks(level.first_tick_spider, level.last_tick_spider, spiderqueenbossrushsplit);

    level.spiderqueenbossrush setTimerUp(-1);
    level.spiderqueenbossrush setText(split_time + " (" + diff_string + "^7)");
}

function takeobossrushquad() {
    self endon("disconnect");

    if (!isdefined(level.takeobossrush)) {
        level.takeobossrush = newHudElem();
        level.takeobossrush init_hudelem("left", "top", "user_left", "user_top", 10, 5, 1.5, 0, (1,1,1), 1, &"^7Takeo: ");
    }

    level flag::wait_till("flag_init_takeo_fight");

    level.takeobossrush.alpha = 1;
    level.takeobossrush setTimerUp(0);
    level.first_tick_takeo = level.ticks;

    level flag::wait_till("takeo_freed");

    level.last_tick_takeo = level.ticks;
    level.total_ticks_takeo = level.last_tick_takeo - level.first_tick_takeo;

    takeobossrushsplit = isdefined(level.takeobossrushsplit) ? level.takeobossrushsplit : 0;

    split_time = timecalculated_ticks(level.first_tick_takeo, level.last_tick_takeo);
    diff_string = comparisoncalculate_ticks(level.first_tick_takeo, level.last_tick_takeo, takeobossrushsplit);

    level.takeobossrush setTimerUp(-1);
    level.takeobossrush setText(split_time + " (" + diff_string + "^7)");
}

function spiderqueenbossrushquad() {
    self endon("disconnect");

    if (!isdefined(level.spiderqueenbossrush)) {
        level.spiderqueenbossrush = newHudElem();
        level.spiderqueenbossrush init_hudelem("left", "top", "user_left", "user_top", 10, 20, 1.5, 0, (1,1,1), 1, &"^7Spider: ");
    }

    wait 10;
    
    while (!whiteflash()) wait 0.05;

    level.spiderqueenbossrush.alpha = 1;
    level.spiderqueenbossrush setTimerUp(0);
    level.first_tick_spider = level.ticks - 244;

    level flag::wait_till("spider_queen_dead");
    wait 3.067;

    level.last_tick_spider = level.ticks;
    level.total_ticks_spider = level.last_tick_spider - level.first_tick_spider;

    spiderqueenbossrushsplit = isdefined(level.spiderqueenbossrushsplit) ? level.spiderqueenbossrushsplit : 0;

    split_time = timecalculated_ticks(level.first_tick_spider, level.last_tick_spider);
    diff_string = comparisoncalculate_ticks(level.first_tick_spider, level.last_tick_spider, spiderqueenbossrushsplit);

    level.spiderqueenbossrush setTimerUp(-1);
    level.spiderqueenbossrush setText(split_time + " (" + diff_string + "^7)");
}
