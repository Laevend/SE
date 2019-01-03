/// @description Insert description here
// You can write your code in this editor

if (global.paused)
{	// if the game is paused, don't do anything
	return;
}

if (time_elapsed < fade_in_time)
{
	time_elapsed ++;
}
else
{
	if(keyboard_check_pressed(vk_space))
	{
		//only increase page if page +1 is less than total number of entries
		if(page+1<array_length_1d(text))
		{
			// advance to next page
			page+=1;
		}
		else
		{
			// no more pages - destroy the text box
		
			// perform user event 1 on the original NPC that instanced this text box
			// this might not always be used, but it will be useful for scripted sequences.
			if (npc_origin != noone)
			{
				with (npc_origin)
				{
					event_perform(ev_other, ev_user1);
				}
			}
		
			// give control back to the player
			global.player_state = st_play;
		
			instance_destroy();
		}
	}
}