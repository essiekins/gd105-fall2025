//Project 2 (V1.2)= It's Fall time ^u^
PImage bg,car;

void setup(){
  size(900, 700);
  background(#ff00ff); //Matt's mandatory neon pink
  // loading my images
  car = loadImage("car.png");
  bg = loadImage("fallBG.jpg");
}

void draw (){
  image (car,450,10,height*0.70,width*0.40);
  image (bg,0,0);

}
