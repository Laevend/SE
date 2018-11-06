/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(vk_space))
{
	//only increase page if page +1 is less than total number of entries
	if(page+1<array_length_1d(text)){
	page+=1;
	}
	
}