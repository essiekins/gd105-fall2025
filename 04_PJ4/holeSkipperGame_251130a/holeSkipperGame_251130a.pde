//start tile A0 or A8
int startCol = 0;
int startRow = 8;

//tiles for x and y
int xTile = 15;
int yTile = 9;
float tileSize = 50;

playerPosition player;

//tiles 2 states, safe/hole
// safe.state 
// hole.state

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
  rect(height/2, width/2, 700, 700);
  popMatrix();

  //laying out start end zone positions
  pushMatrix();
  fill(12, 153, 20);//green
  strokeWeight(10);
  popMatrix();
  /*
  line(100,180,700,180);// end zone barrier (width)
  line(100,600,700,600);// start zone (width)
  line(x,100,x,600);// testing x line
   */
  //end square
  rectMode(CENTER);
  rect(400, 150, 700, 100);
  //start square
  rect(400, 650, 700, 100);
  // line(100,300,700,300); // testing y line

  /* GRID GUIDANCE FOR TILES
  // x lines. remember 600 square size not counting as a line. use 720.
  //remember to switch start/end lines for squares later because of that ^
  */

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


//player standing square
class playerPosition {
  int startCol;
  int startRow;
  float tileSize;
  playerPosition(int startCol, int startRow, float tileSize) {
  this.startCol = startCol;
  this.startRow = startRow;
  this.tileSize = tileSize;
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
