function globaltime()
{
	level.height = 10;

	if(!isdefined(level.globaltime)){

		level.globaltime = newHudElem();
		level.globaltime init_hudelem("left", "top", "user_left", "user_top", 10, level.height, 1.5, 0, (1,1,1), 1, &"^7Global Time: ");

		level.globaltime setTimerUp(0);
		level.globaltime.alpha = 1;
		level.first_tick = level.ticks;

		level.height = level.height+15;

	}

	last_tick = level.ticks;

	if(isDefined(last_tick)){
		total_ticks = last_tick - level.first_tick;
		level.globaltime thread calculate_time(total_ticks);
	}
}





function timecalculated_ticks(start_tick, end_tick)
{
    time_taken_s = (end_tick - start_tick) * 0.05;

    min = int(time_taken_s / 60);
    seconds = int(time_taken_s) % 60;
    ms = int((time_taken_s - int(time_taken_s)) * 100);

    if (min > 0)
        return min + ":" + ((seconds < 10) ? "0" + seconds : seconds) + "." + ((ms < 10) ? "0" + ms : ms);
    else
        return ((seconds < 10) ? "0" + seconds : seconds) + "." + ((ms < 10) ? "0" + ms : ms);
}






function comparisoncalculate_ticks(start_tick, end_tick, target_sec)
{
    time_taken_s = (end_tick - start_tick) * 0.05;
    diff = time_taken_s - target_sec;
    abs_diff = abs(diff);
    diff_sign = (diff < 0) ? "^2-" : "^1+";

    min = int(abs_diff / 60);
    seconds = int(abs_diff) % 60;
    ms = int((abs_diff - int(abs_diff)) * 100);

    if (min > 0)
        return diff_sign + min + ":" + ((seconds < 10) ? "0" + seconds : seconds) + "." + ((ms < 10) ? "0" + ms : ms);
    else
        return diff_sign + ((seconds < 10) ? "0" + seconds : seconds) + "." + ((ms < 10) ? "0" + ms : ms);
}






function timecalculated(start_ms, end_ms)
{
    time_taken_ms = end_ms - start_ms;
    time_taken_sec = int(time_taken_ms / 1000);
    ms = int((time_taken_ms % 1000) / 10);
    seconds = time_taken_sec % 60;
    min = int(time_taken_sec / 60);

    if (min > 0)
    {
        return min + ":" +
               ((seconds < 10) ? "0" + seconds : seconds) + "." +
               ((ms < 10) ? "0" + ms : ms);
    }
    else
    {
        return ((seconds < 10) ? "0" + seconds : seconds) + "." +
               ((ms < 10) ? "0" + ms : ms);
    }
}





function comparisoncalculate(start_ms, end_ms, target_sec)
{
    time_taken_ms = end_ms - start_ms;
    diff = time_taken_ms - (target_sec * 1000);
    abs_diff = abs(diff);
    diff_sign = (diff < 0) ? "^2-" : "^1+";

    abs_diff = int(abs_diff);
    temp_min = int(abs_diff / 60000);
    temp_sec = int((abs_diff % 60000) / 1000);
    temp_mil = int((abs_diff % 1000) / 10);

    if (temp_min > 0)
    {
        return diff_sign +
               temp_min + ":" +
               ((temp_sec < 10) ? "0" + temp_sec : temp_sec) + "." +
               ((temp_mil < 10) ? "0" + temp_mil : temp_mil);
    }
    else
    {
        return diff_sign +
               ((temp_sec < 10) ? "0" + temp_sec : temp_sec) + "." +
               ((temp_mil < 10) ? "0" + temp_mil : temp_mil);
    }
}






function game_time()
{

	level.tick = 0.05;
	level.ticks = 0;

	level flag::wait_till("start_zombie_round_logic");
	wait 2.5;

	while(true){
		wait level.tick;
		level.ticks++;
	}
}





function calculate_time(ticks)
{

    time = ticks*level.tick;

    text = "";
    ms = int(time*100)%100;
    s = int(time-(ms/100));

    h = int(s/3600);
    if(h>0) s = s - (3600*h);

    min = int(s/60);
    if(min>0) s = s - (60*min);

    hours = 0;

    if(h>0){
        hours = 1;
        text = text+h+":";
    }

    if(hours && min<10) text = text+"0"+min+":";
    else if(hours && min>=10) text = text+min+":";
    else if(!hours && min<10) text = text+"0"+min+":";
    else text = text+min+":";

    if(s<10) text = text+"0"+s+".";
    else text = text+s+".";

    text = text+ms+" ms";
    self setText(text);
}






function calculate_split(ticks)
{

    time = ticks*level.tick;

    text = "^2";
    ms = int(time*100)%100;
    s = int(time-(ms/100));

    h = int(s/3600);
    if(h>0) s = int(s - (3600*h));

    min = int(s/60);
    if(min>0) s = int(s - (60*min));


    hours = 0;

    if(h>0){
        hours = 1;
        text = text+h+":";
    }

    if(hours && min<10) text = text+"0"+min+":";
    else if(hours && min>=10) text = text+min+":";
    else if(!hours && min<10) text = text+"0"+min+":";
    else text = text+min+":";

    if(s<10) text = text+"0"+s+".";
    else text = text+s+".";


    text = text+ms;
    self setText(text);
    self.alpha = 1;
}




function init_hudelem(alignx, aligny, horzalign, vertalign, x, y, fontscale, alpha, color, hidewheninmenu, label)
{

    self.alignx = alignx;
	self.aligny = aligny;
	self.horzalign = horzalign;
	self.vertalign = vertalign;
	self.x = x;
	self.y = y;
	self.fontscale = fontscale;
	self.alpha = alpha;
	self.color = color;
	self.hidewheninmenu = hidewheninmenu;
	self.label = label;

}





function set_time_frozen(hud, time)
{
	if(time != 0)
	{
		time -= .1;
	}

	while (1)
	{
		if(time == 0)
		{
			hud setTimerUp(time);
		}
		else
		{
			hud setTimer(time);
		}

		wait 0.1;
	}
}






function format_float(num)
{
    int_part = int(num);
    decimal_part = int((num - int_part) * 100);

    if (decimal_part < 10)
        return int_part + ".0" + decimal_part;
    else
        return int_part + "." + decimal_part;
}






IsTrue(bool)
{
	if (IsDefined(bool) && bool) {
        return true;
    }
	else {
        return false;
    }
}






function fastExit()
{
	level waittill("end_game");
	wait 7;
	exitLevel(0);
}






function Watermark()
{
    self endon("disconnect");

    if (!isdefined(level.watermark)) {

        level flag::wait_till("start_zombie_round_logic");
	    wait 2.5;
        level.watermark = newHudElem();
        level.watermark init_hudelem("left", "bottom", "user_left", "user_bottom", 10, -10, 1.5, 0, (1,1,1), 1, &"^7By ^6Haunted");
        level.watermark.alpha = 1;

        wait 5;
        level.watermark.alpha = 0.9;
        wait 0.5;
        level.watermark.alpha = 0.8;
        wait 0.5;
        level.watermark.alpha = 0.7;
        wait 0.5;
        level.watermark.alpha = 0.6;
        wait 0.5;
        level.watermark.alpha = 0.5;
        wait 0.5;
        level.watermark.alpha = 0.4;
        wait 0.5;
        level.watermark.alpha = 0.3;
        wait 0.5;
        level.watermark.alpha = 0.2;
        wait 0.5;
        level.watermark.alpha = 0.1;
        wait 0.5;
        level.watermark.alpha = 0;
    }
}







function VelocityHud()
{
	self endon("disconnect");

	if(!isdefined(self.zombie_alive_hud)){

		self.VelocityHud = newClientHudElem(self);
		self.VelocityHud init_hudelem("right", "top", "user_right", "user_top", -50, 150, 1.5, 0, (1,1,1), 1, &"^6Velocity: ");

		self.VelocityHud.alpha = 1;


		while(true){
			wait level.tick;

			self.VelocityHud setvalue( int( length ( self getVelocity())));
		}

	}

}






function whiteflash()
{
    foreach( player in getplayers() ) if( isdefined( player.screen_fade_menus ) ) return true;
    return false;
}






function startzodbossrush()
{
    character_names = ["boxer","detective","femme","magician"];
    foreach(str_charname in character_names){
        if(!level flag::get(("ee_keeper_" + str_charname) + "_resurrected")) return false;
    }

	return true;
}





function is_teleporting_to_arena()
{
    return IsTrue( getplayers()[0].b_teleporting );
}

