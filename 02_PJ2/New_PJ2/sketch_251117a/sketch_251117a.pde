//Project 2 (V1.2)= It's Fall time ^u^
PImage bg,car,pumpkins;

void setup(){
  size(1000, 700);
  background(#ff00ff); //Matt's mandatory neon pink
  // loading my images
  car = loadImage("car.png");
  bg = loadImage("fallBG.jpg");
  pumpkins = loadImage("pumpkins.png");
}

void draw (){
  image (bg ,0,100);
  image (car,200,300);
  //pumpkins
  scale (1.3);
  image (pumpkins,0,350); 
  

}
