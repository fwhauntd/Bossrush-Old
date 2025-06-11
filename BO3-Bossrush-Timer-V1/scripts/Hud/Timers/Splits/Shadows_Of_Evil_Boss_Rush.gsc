function shadowsofevilbossrushsolo()
{
    level thread shadowmanbossrushsolo();
    level thread gatewormbossrushsolo();
}

function shadowsofevilbossrushduo()
{
    level thread shadowmanbossrushduo();
    level thread gatewormbossrushduo();
}

function shadowsofevilbossrushtrio()
{
    level thread shadowmanbossrushtrio();
    level thread gatewormbossrushtrio();
}

function shadowsofevilbossrushquad()
{
    level thread shadowmanbossrushquad();
    level thread gatewormbossrushquad();
}

function shadowmanbossrushsolo()
{
    self endon("disconnect");

    if (!isdefined(level.shadowmanbossrush)) {
        level.shadowmanbossrush = newHudElem();
        level.shadowmanbossrush init_hudelem("left", "top", "user_left", "user_top", 10, 5, 1.5, 0, (1,1,1), 1, &"^7Shadowman: ");
        
        while( !startzodbossrush() ) wait 0.05;
        level.shadowmanbossrush SetTimerUp(0);
        level.shadowmanbossrush.alpha = 1;
        }

    shadowmanbossrushsplit = level.shadowmanbossrushsplit;
    if (!isdefined(level.target_time_ms))
        level.target_time_ms = shadowmanbossrushsplit;

    start_time = getTime();
    level flag::wait_till("ee_boss_defeated");
    end_time = getTime();

    split_time = timecalculated(start_time, end_time);
    diff_string = comparisoncalculate(start_time, end_time, level.shadowmanbossrushsplit);

    level.shadowmanbossrush setText(split_time + " (" + diff_string + "^7)");
}

function gatewormbossrushsolo()
{
    self endon("disconnect");

    if (!isdefined(level.gatewormbossrush)) {
        level.gatewormbossrush = newHudElem();
        level.gatewormbossrush init_hudelem("left", "top", "user_left", "user_top", 10, 20, 1.5, 0, (1,1,1), 1, &"^7End: ");
        
        while( !startzodbossrush() ) wait 0.05;
        level.gatewormbossrush SetTimerUp(0);
        level.gatewormbossrush.alpha = 0;
        }

    gatewormbossrushsplit = level.gatewormbossrushsplit;
    if (!isdefined(level.target_time_ms))
        level.target_time_ms = gatewormbossrushsplit;

    start_time = getTime();
    level flag::wait_till("ee_boss_defeated");
    level.gatewormbossrush.alpha = 1;
    level flag::wait_till("ee_final_boss_defeated");
    end_time = getTime();

    split_time = timecalculated(start_time, end_time);
    diff_string = comparisoncalculate(start_time, end_time, level.gatewormbossrushsplit);

    level.gatewormbossrush setText(split_time + " (" + diff_string + "^7)");
}

function shadowmanbossrushduo()
{
    self endon("disconnect");

    if (!isdefined(level.shadowmanbossrush)) {
        level.shadowmanbossrush = newHudElem();
        level.shadowmanbossrush init_hudelem("left", "top", "user_left", "user_top", 10, 5, 1.5, 0, (1,1,1), 1, &"^7Shadowman: ");
        
        while( !startzodbossrush() ) wait 0.05;
        level.shadowmanbossrush SetTimerUp(0);
        level.shadowmanbossrush.alpha = 1;
        }

    shadowmanbossrushsplit = level.shadowmanbossrushsplit;
    if (!isdefined(level.target_time_ms))
        level.target_time_ms = shadowmanbossrushsplit;

    start_time = getTime();
    level flag::wait_till("ee_boss_defeated");
    end_time = getTime();

    split_time = timecalculated(start_time, end_time);
    diff_string = comparisoncalculate(start_time, end_time, level.shadowmanbossrushsplit);

    level.shadowmanbossrush setText(split_time + " (" + diff_string + "^7)");
}

function gatewormbossrushduo()
{
    self endon("disconnect");

    if (!isdefined(level.gatewormbossrush)) {
        level.gatewormbossrush = newHudElem();
        level.gatewormbossrush init_hudelem("left", "top", "user_left", "user_top", 10, 20, 1.5, 0, (1,1,1), 1, &"^7End: ");
        
        while( !startzodbossrush() ) wait 0.05;
        level.gatewormbossrush SetTimerUp(0);
        level.gatewormbossrush.alpha = 0;
        }

    gatewormbossrushsplit = level.gatewormbossrushsplit;
    if (!isdefined(level.target_time_ms))
        level.target_time_ms = gatewormbossrushsplit;

    start_time = getTime();
    level flag::wait_till("ee_boss_defeated");
    level.gatewormbossrush.alpha = 1;
    level flag::wait_till("ee_final_boss_defeated");
    end_time = getTime();

    split_time = timecalculated(start_time, end_time);
    diff_string = comparisoncalculate(start_time, end_time, level.gatewormbossrushsplit);

    level.gatewormbossrush setText(split_time + " (" + diff_string + "^7)");
}

function shadowmanbossrushtrio()
{
    self endon("disconnect");

    if (!isdefined(level.shadowmanbossrush)) {
        level.shadowmanbossrush = newHudElem();
        level.shadowmanbossrush init_hudelem("left", "top", "user_left", "user_top", 10, 5, 1.5, 0, (1,1,1), 1, &"^7Shadowman: ");
        
        while( !startzodbossrush() ) wait 0.05;
        level.shadowmanbossrush SetTimerUp(0);
        level.shadowmanbossrush.alpha = 1;
        }

    shadowmanbossrushsplit = level.shadowmanbossrushsplit;
    if (!isdefined(level.target_time_ms))
        level.target_time_ms = shadowmanbossrushsplit;

    start_time = getTime();
    level flag::wait_till("ee_boss_defeated");
    end_time = getTime();

    split_time = timecalculated(start_time, end_time);
    diff_string = comparisoncalculate(start_time, end_time, level.shadowmanbossrushsplit);

    level.shadowmanbossrush setText(split_time + " (" + diff_string + "^7)");
}

function gatewormbossrushtrio()
{
    self endon("disconnect");

    if (!isdefined(level.gatewormbossrush)) {
        level.gatewormbossrush = newHudElem();
        level.gatewormbossrush init_hudelem("left", "top", "user_left", "user_top", 10, 20, 1.5, 0, (1,1,1), 1, &"^7End: ");
        
        while( !startzodbossrush() ) wait 0.05;
        level.gatewormbossrush SetTimerUp(0);
        level.gatewormbossrush.alpha = 0;
        }

    gatewormbossrushsplit = level.gatewormbossrushsplit;
    if (!isdefined(level.target_time_ms))
        level.target_time_ms = gatewormbossrushsplit;

    start_time = getTime();
    level flag::wait_till("ee_boss_defeated");
    level.gatewormbossrush.alpha = 1;
    level flag::wait_till("ee_final_boss_defeated");
    end_time = getTime();

    split_time = timecalculated(start_time, end_time);
    diff_string = comparisoncalculate(start_time, end_time, level.gatewormbossrushsplit);

    level.gatewormbossrush setText(split_time + " (" + diff_string + "^7)");
}

function shadowmanbossrushquad()
{
    self endon("disconnect");

    if (!isdefined(level.shadowmanbossrush)) {
        level.shadowmanbossrush = newHudElem();
        level.shadowmanbossrush init_hudelem("left", "top", "user_left", "user_top", 10, 5, 1.5, 0, (1,1,1), 1, &"^7Shadowman: ");
        
        while( !startzodbossrush() ) wait 0.05;
        level.shadowmanbossrush SetTimerUp(0);
        level.shadowmanbossrush.alpha = 1;
        }

    shadowmanbossrushsplit = level.shadowmanbossrushsplit;
    if (!isdefined(level.target_time_ms))
        level.target_time_ms = shadowmanbossrushsplit;

    start_time = getTime();
    level flag::wait_till("ee_boss_defeated");
    end_time = getTime();

    split_time = timecalculated(start_time, end_time);
    diff_string = comparisoncalculate(start_time, end_time, level.shadowmanbossrushsplit);

    level.shadowmanbossrush setText(split_time + " (" + diff_string + "^7)");
}

function gatewormbossrushquad()
{
    self endon("disconnect");

    if (!isdefined(level.gatewormbossrush)) {
        level.gatewormbossrush = newHudElem();
        level.gatewormbossrush init_hudelem("left", "top", "user_left", "user_top", 10, 20, 1.5, 0, (1,1,1), 1, &"^7End: ");
        
        while( !startzodbossrush() ) wait 0.05;
        level.gatewormbossrush SetTimerUp(0);
        level.gatewormbossrush.alpha = 0;
        }

    gatewormbossrushsplit = level.gatewormbossrushsplit;
    if (!isdefined(level.target_time_ms))
        level.target_time_ms = gatewormbossrushsplit;

    start_time = getTime();
    level flag::wait_till("ee_boss_defeated");
    level.gatewormbossrush.alpha = 1;
    level flag::wait_till("ee_final_boss_defeated");
    end_time = getTime();

    split_time = timecalculated(start_time, end_time);
    diff_string = comparisoncalculate(start_time, end_time, level.gatewormbossrushsplit);

    level.gatewormbossrush setText(split_time + " (" + diff_string + "^7)");
}
