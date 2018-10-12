/// @description Insert description here
// You can write your code in this editor

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

