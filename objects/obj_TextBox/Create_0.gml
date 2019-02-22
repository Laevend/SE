/// @description Insert description here
// You can write your code in this editor

//This text variable should be changed by the npc so that different npc can have different text in the box
text = "To see the world, things dangerous to come to, to see behind walls, draw closer, to find each other, and to feel. That is the purpose of life. ";
text_pos = 1;
text_length = 0;
current_text = "";

page = 0;
text_padding = 5;
box_Width = sprite_get_width(spr_textBox);
string_Height = string_height(text);

npc_origin = noone;
fade_in_time = 10; // time, in frames, before the text box can be interacted with.
// this should be at least 1, or the space press to talk to the NPC will carry over and immediately skip the first string.
time_elapsed = 0;

/*

x_scale = 
y_scale = 
x_Origin = view_get_xport(0)+10
y_Origin = 









*/