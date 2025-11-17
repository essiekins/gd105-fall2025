// rectangles CH2 pg.22

size(200,200); //remember this is canvas size
fill(140,180,20);
rect(21,22,70,30);
// also heres a rectangle with rounded corners
rect(21,62,70,30,10); // the last argument is the 'corner radius'. 

/*practice: draw 2 rounded rectangles with different positionings.

Remember that by default, CORNER mode would place it at top left, but
we're lazy so let's not make more pages :p */

/* if my canvas is 200x200 then our center is 100,100. 
So any point you want to make the center (first 2 numbers)
is where it will be centered at.*/

rectMode(CENTER);
fill(255,0,0);
rect(100,120,70,30,10);

//if we want it to start at a specific corner we use CORNER.
rectMode(CORNER);
fill(255,0,0);
rect(100,120,70,30,10);
/*notice how the previous rectangle's center is now the
upper left corner of the second rectangle*/
