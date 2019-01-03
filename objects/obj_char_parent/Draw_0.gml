// this will make sure the drawn sprite is always aligned, but it has the unfortunate side effect of
// making the movement of a moving sprite appear "jagged" - it might alternate between 1 and 2 pixels
// per frame if the object moves 1.5 pixels per frame, for example. It looks very distracting so I've
// decided to comment it out.
//draw_sprite(sprite_index, image_index, floor(x), floor(y));

draw_self();