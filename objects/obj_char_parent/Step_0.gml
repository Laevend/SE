/// @description Requires dx and dy defined
// You can write your code in this editor

if (global.paused)
{	// if the game is paused, don't do anything
	return;
}

var _sdx = dx;
var _sdy = dy;

var i = 0;
if (_sdx > 0)
{
	for (i = _sdx; i > 0; i--)
	{
		if (place_free(x+i, y))
		{
			x += i;
			break;
		}
	}
	if (i != _sdx)
	{
		// collided with right wall
		x = floor(x);
	}
}
else if (_sdx < 0)
{
	for (i = _sdx; i < 0; i++)
	{
		if (place_free(x+i, y))
		{
			x += i;
			break;
		}
	}
	if (i != _sdx)
	{
		// collided with left wall
		x = ceil(x);
	}
}
if (_sdy > 0)
{
	for (i = _sdy; i > 0; i--)
	{
		if (place_free(x, y+i))
		{
			y += i;
			break;
		}
	}
	if (i != _sdy)
	{
		// collided with bottom wall
		y = floor(y);
	}
}
else if (_sdy < 0)
{
	for (i = _sdy; i < 0; i++)
	{
		if (place_free(x, y+i))
		{
			y += i;
			break;
		}
	}
	if (i != _sdy)
	{
		// collided with top wall
		y = ceil(y);
	}
}

//x += dx;
//y += dy;

if (dx > 0)
{
	sprite_index = sprite_walk_right;
}
else if (dx < 0)
{
	sprite_index = sprite_walk_left;
}
else
{
	if (dy > 0)
	{
		sprite_index = sprite_walk_down;
	}
	else if (dy < 0)
	{
		sprite_index = sprite_walk_up;
	}
	else
	{
		sprite_index = sprite_idle;
	}
}