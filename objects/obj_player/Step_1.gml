/// @description Insert description here
// You can write your code in this editor

if (global.paused)
{	// if the game is paused, don't do anything
	image_speed = 0;
	return;
}
else
{
	image_speed = 1;
}

if (global.player_state == st_play)
{
	dx = 0;
	dy = 0;
	
	if (keyboard_check(vk_right))
	{
		dx += global.char_speed;
	}
	
	if (keyboard_check(vk_left))
	{
		dx -= global.char_speed;
	}
	
	if (keyboard_check(vk_up))
	{
		dy -= global.char_speed;
	}
	
	if (keyboard_check(vk_down))
	{
		dy += global.char_speed;
	}
	
	if (keyboard_check_pressed(vk_space))
	{
		// use the input to find the position to check for an NPC
		if ((dx != 0) or (dy != 0))
		{
			if (dx != 0) {
				var _check_x = 8 + (16 * sign(dx));
				var _check_y = 8;
			}
			else {
				var _check_x = 8;
				var _check_y = 8 + (16 * sign(dy));
			}
			
			// check for an NPC at this position
			var _npc = instance_position(x+_check_x, y+_check_y, obj_npc_parent);
			if (_npc != noone)
			{
				// perform user event 0 - the "display text box" event
				with (_npc)
				{
					event_perform(ev_other, ev_user0);
				}
				
				// lock the players movement until the textbox is completed
				global.player_state = st_inactive;
			}
		}
	}
}