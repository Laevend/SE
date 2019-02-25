/// @desc SlideTransition(mode , targetRoom)
/// @arg Mode sets transition mode between enxt ,goto 
/// @arg Target sets target room when using goto mode

with(obj_transition_base)
{
	mode = argument[0];
	if(argument_count>1) {target = argument[1];}
}