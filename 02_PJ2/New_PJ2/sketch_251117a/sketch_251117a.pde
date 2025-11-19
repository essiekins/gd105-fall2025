//Project 2 (NEW)= It's Fall time ^u^
PImage bg, car, pumpkins, redLeaf, doubleLeaf, redLeaf2, whiteLeaf, whiteOrangeLeaf,
  orangeTriLeaf, yellowLeaf, yellowLeaf2, wetLeaf1, wetLeaf2, wetLeaf3;
  
PImage[] Leaves= new PImage[10]; //10 leaves
ArrayList<Leaf> leaves= new ArrayList<Leaf>();

void setup(){
  size(1024, 700);
  background(#ff00ff); //Matt's mandatory neon pink
  
  // loading my static images
  bg               = loadImage("fallBG.jpg");
  car              = loadImage("car.png");
  pumpkins         = loadImage("pumpkins.png");
  
  // loading moving images
  redLeaf          = loadImage("redLeaf.png");
  redLeaf2         = loadImage("redLeaf2.png");
  doubleLeaf       = loadImage("doubleLeaf.png");
  whiteLeaf        = loadImage("whiteLeaf.png");
  whiteOrangeLeaf  = loadImage("whiteOrangeLeaf.png");
  yellowLeaf       = loadImage("yellowLeaf.png");
  yellowLeaf2      = loadImage("yellowLeaf2.png");
  wetLeaf1         = loadImage("wetLeaf1.png");
  wetLeaf2         = loadImage("wetLeaf2.png");
  wetLeaf3         = loadImage("wetLeaf3.png");
  
  //index of leaves to sort through
  Leaves[0] = redLeaf;
  Leaves[1] = redLeaf2;
  Leaves[2] = doubleLeaf;
  Leaves[3] = whiteLeaf;
  Leaves[4] = whiteOrangeLeaf;
  Leaves[5] = yellowLeaf;
  Leaves[6] = yellowLeaf2;
  Leaves[7] = wetLeaf1;
  Leaves[8] = wetLeaf2;
  Leaves[9] = wetLeaf3;
   
  //starting leaves
  for (int i = 0; i < 30; i++) {
    leaves.add(new Leaf());
    }
}
 

void draw (){
  //car and background
  image (bg , 0, 100);
  image (car, 430, 450, height*0.20, width*0.10);
  
  //pumpkins
  pushMatrix();
  scale (1.3);
  image (pumpkins, 0, 350); 
  popMatrix();
  
  //redLeaf
  pushMatrix();
  scale(.80);
  //image (redLeaf,20,0);
  popMatrix();
  
  //update leaf object
  for (Leaf l: leaves){
    l.update();
    l.display();
  }
}
  
class Leaf {
  float x, y;
  float speed;
  PImage image;
  float size;
  
  //choose leaf at random
  Leaf(){
    x = random(width);
    y = random(-100, -50);
    speed = random(2,6);
    image = Leaves[int(random(Leaves.length))];
    size = random(0.1,1); // leaf sizes
  }

  void update (){
    y += speed; 
    if (y > height){
    y = random(-100, -50); //loop back to og spot
    x = random(width); //move places randomly
    image = Leaves[int(random(Leaves.length))]; //pick a new leaf
    }
  }
 void display(){
    image(image, x, y);
  }
}    
