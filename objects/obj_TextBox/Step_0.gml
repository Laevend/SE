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
	if (text_pos <= text_length && string_char_at(text, text_pos) != "|")
	{
		current_text += string_char_at(text, text_pos);
		text_pos++;
	}
	
	if(keyboard_check_pressed(vk_space))
	{
		// if text_pos points to a pipe (the text scroll has stopped), move to the next dialogue
		if(string_char_at(text, text_pos) == "|")
		{
			text_pos++; // move to the next character, bypass the pipe
			current_text = ""; // reset the displayed text
		}
		else if (text_pos > text_length) // if all the text in the string has been displayed
		{
			// no more text - destroy the text box
		
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