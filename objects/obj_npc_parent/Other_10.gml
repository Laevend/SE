// Event to instance a textbox

var currentTextBox = instance_create_layer(x,y,"Text_Box",obj_TextBox);
currentTextBox.text = npc_text[npc_state];
currentTextBox.npc_origin = id;
currentTextBox.text_length = string_length(npc_text[npc_state]);
currentTextBox.text_pos = 1;