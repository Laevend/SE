/// @description Insert description here
// You can write your code in this editor

switch (npc_state)
{
	case 0:
	
		if (obj_char_parent.x > self.x){ 
		x -= 16;
		}
		else if (obj_char_parent.x <= self.x){
		x += 16;
		}
		
		npc_state++;
		break;
}