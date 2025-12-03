float x = 0;
//float y = 0;

void setup(){
  background(41, 73, 148);
  size(800,800);
}
//container
void draw(){
  pushMatrix();
  noFill();
  rectMode(CENTER);
  strokeWeight(5);
  rect(height/2,width/2,600,600);
  popMatrix();
  
  
  //single tile test
  pushMatrix();
  color(51, 143, 56);
  rectMode(CENTER);
  rect(height/2,width/2,60,60);
  popMatrix();
  
  //laying out start end zone positions
  line(100,200,700,200);// end zone (width)
  line(100,600,700,600);// start zone (width)
 // line(200,100,200,600);// (height)
 
  //add lines in x direction
  // figure out space later
  
  x= 200;
  line(x,100,x,600);
  x = x + 60;
  line(x,100,x,600);
  x = x + 60;
  line(x,100,x,600);
  
 /*
  x= 40;
  while (x < 600);{
    line(x,100,x,600);
    x= x  + 40;
    
  }*/
  
}
