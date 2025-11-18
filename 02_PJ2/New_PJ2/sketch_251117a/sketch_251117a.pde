//Project 2 (NEW)= It's Fall time ^u^
PImage bg, car, pumpkins, redLeaf, doubleLeaf, redLeaf2, whiteLeaf, whiteOrangeLeaf,
       orangeTriLeaf, yellowLeaf, yellowLeaf2, wetLeaf1, wetLeaf2, wetLeaf3;

void setup(){
  size(1024, 700);
  background(#ff00ff); //Matt's mandatory neon pink
  
  // loading my static images
  bg               = loadImage("fallBG.jpg");
  car              = loadImage("car.png");
  pumpkins         = loadImage("pumpkins.png");
  
  // loading moving images
  redLeaf          = loadImage ("redLeaf.png");
  redLeaf2         = loadImage("redLeaf2.png");
  doubleLeaf       = loadImage("doubleLeaf.png");
  whiteLeaf        = loadImage("whiteLeaf.png");
  whiteOrangeLeaf  = loadImage("whiteOrangeLeaf.png");
  yellowLeaf       = loadImage("yellowLeaf.png");
  yellowLeaf2      = loadImage("redLeaf2.png");
  wetLeaf1         = loadImage("wetLeaf1.png");
  wetLeaf2         = loadImage("wetLeaf2.png");
  wetLeaf3         = loadImage("wetLeaf3.png");
  
  //defining moving images
  
  
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
  
  //falling leaves
  for (var i= 0; i < redLeaf;
  
}
