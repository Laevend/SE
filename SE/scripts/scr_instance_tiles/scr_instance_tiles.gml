
var _l = layer_get_id("Tiles_Collision");
if (_l == -1) { return; }
var _t = layer_tilemap_get_id(_l);

for (var _x = 0; _x < tilemap_get_width(_t); _x++)
{
	for (var _y = 0; _y < tilemap_get_height(_t); _y++)
	{
		var _tile = tilemap_get(_t, _x,_y);
		if (_tile != 0)
		{
			var _newobj = instance_create_layer(_x*16,_y*16, "Instances", obj_tile_collider);
			
			switch (_tile)
			{
				case 1:
					_newobj.sprite_index = spr_collider_full;
					break;
				case 4:
					_newobj.sprite_index = spr_collider_half_top;
					break;
			}
		}
	}
}