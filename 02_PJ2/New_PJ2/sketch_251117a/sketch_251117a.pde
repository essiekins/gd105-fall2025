//Project 2 (NEW)= It's Fall time ^u^
PImage bg,car,pumpkins,redLeaf;

PImage redLeafFloat;
float angle= 0;
float radius= 10;

void setup(){
  size(1024, 700);
  background(#ff00ff); //Matt's mandatory neon pink
  // loading my images
  car      = loadImage("car.png");
  bg       = loadImage("fallBG.jpg");
  pumpkins = loadImage("pumpkins.png");
  redLeaf  = loadImage ("redLeaf.png");
}

void draw (){
  image (bg ,0,100);
  image (car,430,450,height*0.20, width*0.10);
  
  //pumpkins
  pushMatrix();
  scale (1.3);
  image (pumpkins,0,350); 
  popMatrix();
  
  //redLeaf
  pushMatrix();
  scale(.80);
  //image (redLeaf,20,0);
  popMatrix();
  float x= 20 + angle *cos(angle);
  float y= 10 + radius *sin(angle);
  image (redLeaf,x,y, height*0.10, width*0.20);
  //PVector scale = new PVector(1, 1);
  //angle+=TAU/100; 
}
