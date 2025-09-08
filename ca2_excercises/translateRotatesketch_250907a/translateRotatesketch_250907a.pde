// roatated black rectangle pg.37-38
size(200,200);
background(0);
rectMode(CENTER);
//white canvas
fill(255);
rect(width/2,height/2,200,200);
//translate to center
translate(width/2,height/2);
//roatate by 10 degrees
rotate(radians(10));
// black rectangle in the new 0,0 point or center
fill(0);
rect(0,0,40,40);
