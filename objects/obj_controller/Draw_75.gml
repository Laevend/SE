/// @description Insert description here
// You can write your code in this editor

if (global.paused)
{
	draw_set_color(c_white);
	draw_set_alpha(0.5);

	draw_rectangle(0,0, 1024,768, false);

	draw_set_color(c_black);
	draw_set_alpha(1);

	draw_set_font(-1);
	draw_text_transformed(384, 256, "PAUSED", 4, 4, 0);
}