/// @description Insert description here
// You can write your code in this editor
w =display_get_gui_width();
h = display_get_gui_height();
h_half = h* 0.5;

enum TRANS_MODE
{
	OFF,    //not moving to another room .idle 
	NEXT,   //move to the next room according to the orde in the ide
	GOTO,	//move to the target room according to the target variable
	INTRO	
}
percent  =1;

mode = TRANS_MODE.INTRO; //mode and target need to be initailise when creating 
target = room;           //each transition object 