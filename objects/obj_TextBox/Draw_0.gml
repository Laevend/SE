/// @description Insert description here
// You can write your code in this editor

//draw_set_font(textBox);

//Draw a dialogue box

//work on testbox rooom
//draw_sprite_stretched(spr_textBox,0,view_get_xport(0)+10,view_get_yport(0)+window_get_height()*3/4,view_get_wport(0)-2*10,window_get_height()/4);

//work on textroom 
//draw_sprite_stretched(spr_textBox,0,view_get_xport(0)+10,view_get_yport(0)+camera_get_view_height(view_camera[0])*3/4,camera_get_view_width(view_camera[0])-2*10,camera_get_view_height(view_camera[0])/4);
//draw_sprite_stretched(spr_textBox,0,camera_get_view_x(view_camera[0])+10,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])*3/4,camera_get_view_width(view_camera[0])-2*10,camera_get_view_height(view_camera[0])/4);
//camera_get_view_x(view_camera[0])
//Draw the text
//draw_text_ext(10+text_padding,view_get_yport(0)+camera_get_view_height(view_camera[0])*3/4+text_padding,current_text,string_Height,camera_get_view_width(view_camera[0])-3*10);
/**/

var _cam_x = camera_get_view_x(view_camera[0]);
var _cam_y = camera_get_view_y(view_camera[0]);
var _cam_w = camera_get_view_width(view_camera[0]);
var _cam_h = camera_get_view_height(view_camera[0]);
var _box_h = sprite_height * _cam_w / sprite_get_width(sprite_index);

draw_sprite_stretched(sprite_index,image_index, _cam_x, _cam_y+_cam_h-_box_h, _cam_w, _box_h);
draw_set_colour(c_black);
draw_text_ext(_cam_x+padding_side, _cam_y+_cam_h-_box_h+padding_top, current_text, string_Height, _cam_w-2*padding_side);
draw_set_colour(c_white);
