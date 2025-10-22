//Project 2 = It's Fall time ^u^
//images to be used
PImage photo1, photo2, photo3, photo4, photo5, photo6, photo7,
  photo9, photo10, photo11, photo12, photo13, photo14,
  photo15, photo16;

//rotating leaf
PImage photo8;
float angle= 0;
float radius= 100;


void setup() {
  size(900, 700);
  background(#ff00ff); //Matt's mandatory neon pink
  // loading my images
  photo1 = loadImage("BIRB.png");
  photo2 = loadImage("birds1.png");
  photo3 = loadImage("birds2.png");
  photo4 = loadImage("birds3.png");
  photo5 = loadImage("birds4.png");
  photo6 = loadImage("birds5.png");
  photo7 = loadImage("birdcut.png");
  photo8 = loadImage("leaf.png");
  photo9 = loadImage("morebirbs.png");
  photo10 = loadImage("FALL.png");
  photo11 = loadImage("leafcut.png");
  photo12 = loadImage("sidewalk.png");
  photo13 = loadImage("tree-pinked-4.png");
  photo14 = loadImage("trees-night.png");
  photo15 = loadImage("treetop1.png");
  photo16 = loadImage("winterIsComing.png");
}

void draw() {
  
  //sidewalk
  image(photo12, 440, -20, height*0.70,width*0.40);
  
   //filler?
  tint(99, 30, 12);
  image(photo9, 660, 300);
  noTint();
  
  //le birbs in action
  image(photo5, 200, 100);
  
  //lower left corner tree
  image(photo2, 0, 340, height*0.70,width*0.40);
  
  //lower right corner tree
  image(photo3, 499, 515);
  
  //mid-bottom
  image(photo4, 80, 340, height*0.90,width*0.40);
  
  //mid
  image(photo6, -60, -10);
  
  //BIRB upper left
  image(photo1, -5, -90, height*0.60,width*0.80);
  
  //bird-shaped cut out upper right
  tint(112, 51, 78);
  image(photo7, 400, -140);
  noTint();
  
  //FALL orangey glow
  image(photo10, 60, 10, height*0.60,width*0.80);

  
  //random?
  image(photo11, 300, 300);
  
  //filler
  image(photo13, 60, 300);
  
  image(photo14, 300, 300);
  
  image(photo15, 60, 300);
  //winter is coming
  tint(70, 214, 240);
  image(photo16, 120, 200);
  noTint();
  
  //fall-leaf animation location
    float x= 490 + angle *cos(angle);
    float y= -180 + radius *sin(angle);
  //fall leaf
    image (photo8,x,y, height*0.60, width*0.80); // placing and resizing
    angle+=TAU/360; //loop the float
}
