/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x,y,obj_player))
{	
	if(currentTextBox = noone){
	currentTextBox = instance_create_layer(x,y,"Text_Box",obj_TextBox);
	}
} else{
	if(currentTextBox !=noone){
	instance_destroy(currentTextBox);
	}
}
