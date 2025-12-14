//start tile A0 or A8
int startCol = 0;
int startRow = 8;

//tiles for x and y
int xTile = 15;
int yTile = 9;
float tileSize = 50;

//need collisions set to container before tile states
/* 
-need a life check/gain connected to P lifes will be as coins?
- make the if/else for life checks
*/

/*
  line(100,180,700,180);// end zone barrier (width)
  line(100,600,700,600);// start zone (width)
  line(x,100,x,600);// testing x line
   */
/* GRID GUIDANCE FOR TILES
  // x lines. remember 600 square size not counting as a line. use 720.
  //remember to switch start/end lines for squares later because of that ^
  */

playerPosition player;

void setup() {
  background(41, 73, 148);
  size(800, 800);
  player = new playerPosition(0, 8, tileSize);
}

//container
void draw() {

  pushMatrix();
  noFill();
  rectMode(CENTER);
  stroke(255, 54, 0);//red
  strokeWeight(15);
  rect(height/2, width/2, 700, 700); //width for boundary 700
  popMatrix();   

  //laying out start end zone positions
  pushMatrix();
  fill(12, 153, 20);//green
  strokeWeight(10);
  popMatrix();
  
  //end square
  rectMode(CENTER);
  rect(400, 150, 700, 100);
  //start square
  rect(400, 650, 700, 100);
  // line(100,300,700,300); // testing y line

  //tiles for x and y
  for (int i = 0; i < xTile; i++) {
    for (int j = 0; j < yTile; j++) {
      float xTile = i * tileSize;
      float yTile = j * tileSize;

      //drawing tiles
      pushMatrix();
      noFill();
      rectMode(CORNERS);
      translate(50, 200);
      rect(xTile, yTile, tileSize, tileSize); // my xy tile and tile size
      popMatrix(); 
    }//end of loop for tiles
  } // end of draw tiles
  
  //player position
  player.draw();
 
}// end of draw

//declaring my boundaries as a new XY function inside checkPosition
wallX = containerX;
wallY = containerY;
float boundaryWidth = 200;
float boundaryHeight = 200;

//player standing square
class playerPosition {
  int startCol;
  int startRow;
  float tileSize;
  float x,y;
  playerPosition(int startCol, int startRow, float tileSize) {
  this.startCol = startCol;
  this.startRow = startRow;
  this.tileSize = tileSize;
 
 // am I inside the conatiner? check
 void checkPosition (float posX, float posY){
   float posX = x + posX;
   float posY = y + posY;
   
   if (posX >= wallX && posX <= wallX + width && posY
      // posY >= wallY && posY <= wallY + height )
       x = wallX;
       y = wallY;      
   if (x < containerX
           
 }//end of checkPosition
  
  }
void draw(){
  pushMatrix();
  translate(50,200);
  fill(250,242,0);
  rectMode(CORNER);
  rect(startCol * tileSize, startRow * tileSize, tileSize, tileSize);
  popMatrix();
}//end of draw    
}// end of position class

// start of wasd movements
void keyPressed() {
  if (key == 'w') player.startRow --;
  if (key == 's') player.startRow ++;
  if (key == 'a') player.startCol --;
  if (key == 'd') player.startCol ++;
}//end of keys */
