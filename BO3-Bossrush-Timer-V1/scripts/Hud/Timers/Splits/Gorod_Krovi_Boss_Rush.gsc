function gorodkrovibossrushsolo()
{
    level thread nikolaibossrushsolo();
}

function gorodkrovibossrushduo()
{
    level thread nikolaibossrushsolo();
}

function gorodkrovibossrushtrio()
{
    level thread nikolaibossrushsolo();
}

function gorodkrovibossrushquad()
{
    level thread nikolaibossrushsolo();
}

function nikolaibossrushsolo()
{
    self endon("disconnect");

    if (!isdefined(level.nikolaibossrush)) {
        level.nikolaibossrush = newHudElem();
        level.nikolaibossrush init_hudelem("left", "top", "user_left", "user_top", 10, 5, 1.5, 0, (1,1,1), 1, &"^7Nikolai: ");
    }

    struct::get("ee_boss_start", "targetname") waittill("trigger_activated");

    level.nikolaibossrush.alpha = 1;
    level.nikolaibossrush setTimerUp(0);
    level.first_tick = level.ticks;

    level flag::wait_till("nikolai_complete");

    level.last_tick = level.ticks;
    level.total_ticks = level.last_tick - level.first_tick;

    nikolaibossrushsplit = isdefined(level.nikolaibossrushsplit) ? level.nikolaibossrushsplit : 0;

    split_time = timecalculated_ticks(level.first_tick, level.last_tick);
    diff_string = comparisoncalculate_ticks(level.first_tick, level.last_tick, nikolaibossrushsplit);

    level.nikolaibossrush setText(split_time + " (" + diff_string + "^7)");
}

function nikolaibossrushduo()
{
    self endon("disconnect");

    if (!isdefined(level.nikolaibossrush)) {
        level.nikolaibossrush = newHudElem();
        level.nikolaibossrush init_hudelem("left", "top", "user_left", "user_top", 10, 5, 1.5, 0, (1,1,1), 1, &"^7Nikolai: ");
    }

    struct::get("ee_boss_start", "targetname") waittill("trigger_activated");

    level.nikolaibossrush.alpha = 1;
    level.nikolaibossrush setTimerUp(0);
    level.first_tick = level.ticks;

    level flag::wait_till("nikolai_complete");

    level.last_tick = level.ticks;
    level.total_ticks = level.last_tick - level.first_tick;

    nikolaibossrushsplit = isdefined(level.nikolaibossrushsplit) ? level.nikolaibossrushsplit : 0;

    split_time = timecalculated_ticks(level.first_tick, level.last_tick);
    diff_string = comparisoncalculate_ticks(level.first_tick, level.last_tick, nikolaibossrushsplit);

    level.nikolaibossrush setText(split_time + " (" + diff_string + "^7)");
}

function nikolaibossrushtrio()
{
    self endon("disconnect");

    if (!isdefined(level.nikolaibossrush)) {
        level.nikolaibossrush = newHudElem();
        level.nikolaibossrush init_hudelem("left", "top", "user_left", "user_top", 10, 5, 1.5, 0, (1,1,1), 1, &"^7Nikolai: ");
    }

    struct::get("ee_boss_start", "targetname") waittill("trigger_activated");

    level.nikolaibossrush.alpha = 1;
    level.nikolaibossrush setTimerUp(0);
    level.first_tick = level.ticks;

    level flag::wait_till("nikolai_complete");

    level.last_tick = level.ticks;
    level.total_ticks = level.last_tick - level.first_tick;

    nikolaibossrushsplit = isdefined(level.nikolaibossrushsplit) ? level.nikolaibossrushsplit : 0;

    split_time = timecalculated_ticks(level.first_tick, level.last_tick);
    diff_string = comparisoncalculate_ticks(level.first_tick, level.last_tick, nikolaibossrushsplit);

    level.nikolaibossrush setText(split_time + " (" + diff_string + "^7)");
}

function nikolaibossrushquad()
{
    self endon("disconnect");

    if (!isdefined(level.nikolaibossrush)) {
        level.nikolaibossrush = newHudElem();
        level.nikolaibossrush init_hudelem("left", "top", "user_left", "user_top", 10, 5, 1.5, 0, (1,1,1), 1, &"^7Nikolai: ");
    }

    struct::get("ee_boss_start", "targetname") waittill("trigger_activated");

    level.nikolaibossrush.alpha = 1;
    level.nikolaibossrush setTimerUp(0);
    level.first_tick = level.ticks;

    level flag::wait_till("nikolai_complete");

    level.last_tick = level.ticks;
    level.total_ticks = level.last_tick - level.first_tick;

    nikolaibossrushsplit = isdefined(level.nikolaibossrushsplit) ? level.nikolaibossrushsplit : 0;

    split_time = timecalculated_ticks(level.first_tick, level.last_tick);
    diff_string = comparisoncalculate_ticks(level.first_tick, level.last_tick, nikolaibossrushsplit);

    level.nikolaibossrush setText(split_time + " (" + diff_string + "^7)");
}