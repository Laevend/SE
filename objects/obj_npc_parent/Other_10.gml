// Event to instance a textbox

var currentTextBox = instance_create_layer(x,y,"Text_Box",obj_TextBox);
currentTextBox.text = NPC_text;
currentTextBox.npc_origin = id;