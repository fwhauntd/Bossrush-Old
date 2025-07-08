function revelationsbossrushsolo()
{
    level thread shadowmanfinalbossrushsolo();
}

function revelationsbossrushduo()
{
    level thread shadowmanfinalbossrushduo();
}

function revelationsbossrushtrio()
{
    level thread shadowmanfinalbossrushtrio();
}

function revelationsbossrushquad()
{
    level thread shadowmanfinalbossrushquad();
}

function shadowmanfinalbossrushsolo()
{
    self endon("disconnect");

    if (!isdefined(level.shadowmanfinalbossrush)) {
        level.shadowmanfinalbossrush = newHudElem();
        level.shadowmanfinalbossrush init_hudelem("left", "top", "user_left", "user_top", 10, 5, 1.5, 0, (1,1,1), 1, &"^7Shadowman: ");
    }

    while (!is_teleporting_to_arena()) wait 0.05;

    level.shadowmanfinalbossrush.alpha = 1;
    level.shadowmanfinalbossrush setTimerUp(0);
    level.first_tick = level.ticks;

    level flag::wait_till("final_boss_defeated");
    wait 2.995;
    
    level.last_tick = level.ticks;
    level.total_ticks = level.last_tick - level.first_tick;

    shadowmanfinalbossrushsplit = isdefined(level.shadowmanrevelationsbossrush) ? level.shadowmanrevelationsbossrush : 0;

    split_time = timecalculated_ticks(level.first_tick, level.last_tick);
    diff_string = comparisoncalculate_ticks(level.first_tick, level.last_tick, shadowmanfinalbossrushsplit);

    level.shadowmanfinalbossrush setText(split_time + " (" + diff_string + "^7)");
}

function shadowmanfinalbossrushduo()
{
    self endon("disconnect");

    if (!isdefined(level.shadowmanfinalbossrush)) {
        level.shadowmanfinalbossrush = newHudElem();
        level.shadowmanfinalbossrush init_hudelem("left", "top", "user_left", "user_top", 10, 5, 1.5, 0, (1,1,1), 1, &"^7Shadowman: ");
    }

    while (!is_teleporting_to_arena()) wait 0.05;

    level.shadowmanfinalbossrush.alpha = 1;
    level.shadowmanfinalbossrush setTimerUp(0);
    level.first_tick = level.ticks;

    level flag::wait_till("final_boss_defeated");
    wait 2.995;
    
    level.last_tick = level.ticks;
    level.total_ticks = level.last_tick - level.first_tick;

    shadowmanfinalbossrushsplit = isdefined(level.shadowmanrevelationsbossrush) ? level.shadowmanrevelationsbossrush : 0;

    split_time = timecalculated_ticks(level.first_tick, level.last_tick);
    diff_string = comparisoncalculate_ticks(level.first_tick, level.last_tick, shadowmanfinalbossrushsplit);

    level.shadowmanfinalbossrush setText(split_time + " (" + diff_string + "^7)");
}

function shadowmanfinalbossrushtrio()
{
    self endon("disconnect");

    if (!isdefined(level.shadowmanfinalbossrush)) {
        level.shadowmanfinalbossrush = newHudElem();
        level.shadowmanfinalbossrush init_hudelem("left", "top", "user_left", "user_top", 10, 5, 1.5, 0, (1,1,1), 1, &"^7Shadowman: ");
    }

    while (!is_teleporting_to_arena()) wait 0.05;

    level.shadowmanfinalbossrush.alpha = 1;
    level.shadowmanfinalbossrush setTimerUp(0);
    level.first_tick = level.ticks;

    level flag::wait_till("final_boss_defeated");
    wait 2.995;
    
    level.last_tick = level.ticks;
    level.total_ticks = level.last_tick - level.first_tick;

    shadowmanfinalbossrushsplit = isdefined(level.shadowmanrevelationsbossrush) ? level.shadowmanrevelationsbossrush : 0;

    split_time = timecalculated_ticks(level.first_tick, level.last_tick);
    diff_string = comparisoncalculate_ticks(level.first_tick, level.last_tick, shadowmanfinalbossrushsplit);

    level.shadowmanfinalbossrush setText(split_time + " (" + diff_string + "^7)");
}

function shadowmanfinalbossrushquad()
{
    self endon("disconnect");

    if (!isdefined(level.shadowmanfinalbossrush)) {
        level.shadowmanfinalbossrush = newHudElem();
        level.shadowmanfinalbossrush init_hudelem("left", "top", "user_left", "user_top", 10, 5, 1.5, 0, (1,1,1), 1, &"^7Shadowman: ");
    }

    while (!is_teleporting_to_arena()) wait 0.05;

    level.shadowmanfinalbossrush.alpha = 1;
    level.shadowmanfinalbossrush setTimerUp(0);
    level.first_tick = level.ticks;

    level flag::wait_till("final_boss_defeated");
    wait 2.995;
    
    level.last_tick = level.ticks;
    level.total_ticks = level.last_tick - level.first_tick;

    shadowmanfinalbossrushsplit = isdefined(level.shadowmanrevelationsbossrush) ? level.shadowmanrevelationsbossrush : 0;

    split_time = timecalculated_ticks(level.first_tick, level.last_tick);
    diff_string = comparisoncalculate_ticks(level.first_tick, level.last_tick, shadowmanfinalbossrushsplit);

    level.shadowmanfinalbossrush setText(split_time + " (" + diff_string + "^7)");
}
