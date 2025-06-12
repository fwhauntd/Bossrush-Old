function dereisendrachebossrushsolo()
{
    level thread keeperbossrushsolo();
}

function dereisendrachebossrushduo()
{
    level thread keeperbossrushduo();
}

function dereisendrachebossrushtrio()
{
    level thread keeperbossrushtrio();
}

function dereisendrachebossrushquad()
{
    level thread keeperbossrushquad();
}


function keeperbossrushsolo()
{
    self endon("disconnect");

    if (!isdefined(level.keeperbossrush)) {
        level.keeperbossrush = newHudElem();
        level.keeperbossrush init_hudelem("left", "top", "user_left", "user_top", 10, 5, 1.5, 0, (1,1,1), 1, &"^7Keeper: ");
    }
    
    wait 10;
    
    //while (!whiteflash()) wait 0.05;
    level flag::wait_till("boss_fight_started");
    level.keeperbossrush.alpha = 1;
    level.keeperbossrush setTimerUp(0);
    level.first_tick = level.ticks;

    level flag::wait_till("boss_completed_early");
    wait 13.63;
    
    level.last_tick = level.ticks;
    level.total_ticks = level.last_tick - level.first_tick;

    keeperbossrushsplit = isdefined(level.keeperbossrushsplit) ? level.keeperbossrushsplit : 0;

    split_time = timecalculated_ticks(level.first_tick, level.last_tick);
    diff_string = comparisoncalculate_ticks(level.first_tick, level.last_tick, keeperbossrushsplit);

    level.keeperbossrush setText(split_time + " (" + diff_string + "^7)");
}

function keeperbossrushduo()
{
    self endon("disconnect");

    if (!isdefined(level.keeperbossrush)) {
        level.keeperbossrush = newHudElem();
        level.keeperbossrush init_hudelem("left", "top", "user_left", "user_top", 10, 5, 1.5, 0, (1,1,1), 1, &"^7Keeper: ");
    }
    
    wait 10;
    
    while (!whiteflash()) wait 0.05;
    level.keeperbossrush.alpha = 1;
    level.keeperbossrush setTimerUp(0);
    level.first_tick = level.ticks;

    level flag::wait_till("boss_completed_early");
    wait 13.63;
    
    level.last_tick = level.ticks;
    level.total_ticks = level.last_tick - level.first_tick;

    keeperbossrushsplit = isdefined(level.keeperbossrushsplit) ? level.keeperbossrushsplit : 0;

    split_time = timecalculated_ticks(level.first_tick, level.last_tick);
    diff_string = comparisoncalculate_ticks(level.first_tick, level.last_tick, keeperbossrushsplit);

    level.keeperbossrush setText(split_time + " (" + diff_string + "^7)");
}

function keeperbossrushtrio()
{
    self endon("disconnect");

    if (!isdefined(level.keeperbossrush)) {
        level.keeperbossrush = newHudElem();
        level.keeperbossrush init_hudelem("left", "top", "user_left", "user_top", 10, 5, 1.5, 0, (1,1,1), 1, &"^7Keeper: ");
    }
    
    wait 10;
    
    while (!whiteflash()) wait 0.05;
    level.keeperbossrush.alpha = 1;
    level.keeperbossrush setTimerUp(0);
    level.first_tick = level.ticks;

    level flag::wait_till("boss_completed_early");
    wait 13.63;
    
    level.last_tick = level.ticks;
    level.total_ticks = level.last_tick - level.first_tick;

    keeperbossrushsplit = isdefined(level.keeperbossrushsplit) ? level.keeperbossrushsplit : 0;

    split_time = timecalculated_ticks(level.first_tick, level.last_tick);
    diff_string = comparisoncalculate_ticks(level.first_tick, level.last_tick, keeperbossrushsplit);

    level.keeperbossrush setText(split_time + " (" + diff_string + "^7)");
}

function keeperbossrushquad()
{
    self endon("disconnect");

    if (!isdefined(level.keeperbossrush)) {
        level.keeperbossrush = newHudElem();
        level.keeperbossrush init_hudelem("left", "top", "user_left", "user_top", 10, 5, 1.5, 0, (1,1,1), 1, &"^7Keeper: ");
    }
    
    wait 10;
    
    while (!whiteflash()) wait 0.05;
    level.keeperbossrush.alpha = 1;
    level.keeperbossrush setTimerUp(0);
    level.first_tick = level.ticks;

    level flag::wait_till("boss_completed_early");
    wait 13.63;
    
    level.last_tick = level.ticks;
    level.total_ticks = level.last_tick - level.first_tick;

    keeperbossrushsplit = isdefined(level.keeperbossrushsplit) ? level.keeperbossrushsplit : 0;

    split_time = timecalculated_ticks(level.first_tick, level.last_tick);
    diff_string = comparisoncalculate_ticks(level.first_tick, level.last_tick, keeperbossrushsplit);

    level.keeperbossrush setText(split_time + " (" + diff_string + "^7)");
}
