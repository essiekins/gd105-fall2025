//Different colored lines/orientations CH2 pg.25
size(1920,1080);
background(255);
//30px lineweight
strokeWeight(30);
//set color first, then the line
stroke (9,37,87);
line(0,980,width,980);
stroke(135,3,17);
line(0,10,width,10);

stroke(9,37,87);
line(0,90,width,90);

stroke(211,179,15);
line(100,0,100,height);

stroke(211,179,15);
line(0,650,width,650);

//How to DEFINE colors to stop repeating self, makes the same code shorter:
color blue= color(9,37,87);
color red= color(135,3,17);
color yellow= color(211,179,15);

//set cololrs and draw easier now
stroke (blue);
line(0,980,width,980);
stroke (red);
line (0,10,width,10);
stroke (blue);
line(0,90,width,90);
stroke (yellow);
line(100,0,100,height);
stroke(yellow);
line(0,650,width,650);
