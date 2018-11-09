/// @description Insert description here
// You can write your code in this editor

draw_set_font(textBox);

//Draw a dialogue box

//work on testbox rooom
//draw_sprite_stretched(spr_textBox,0,view_get_xport(0)+10,view_get_yport(0)+window_get_height()*3/4,view_get_wport(0)-2*10,window_get_height()/4);

//work on textroom 
draw_sprite_stretched(spr_textBox,0,view_get_xport(0)+10,view_get_yport(0)+camera_get_view_height(view_camera[0])*3/4,camera_get_view_width(view_camera[0])-2*10,camera_get_view_height(view_camera[0])/4);

//Draw the text
draw_text_ext(10+text_padding,view_get_yport(0)+camera_get_view_height(view_camera[0])*3/4+text_padding,text[page],string_Height,camera_get_view_width(view_camera[0])-2*10);