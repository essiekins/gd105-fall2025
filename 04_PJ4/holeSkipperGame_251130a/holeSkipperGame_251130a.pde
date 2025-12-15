//start tile A0 or A8
int startCol = 0;
int startRow = 8;

//tiles for x and y
int xTile = 14;
int yTile = 9;
float tileSize = 50;
float x;
float y;

//need collisions set to container before tile states
//container
float containerSize = 700; //w and h
float containerX = width /2 - containerSize /2;
float containerY = height /2 - containerSize /2;

//boundaries
float boundaryX = containerX + 200;
float boundaryY = containerY + 200;
float boundaryWidth = 200;
float boundaryHeight = 200;

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
  player = new playerPosition(startCol, startRow, tileSize);
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
      float xTilePos = i * tileSize;
      float yTilePos = j * tileSize;

      //drawing tiles
      pushMatrix();
      noFill();
      rectMode(CORNERS);
      translate(50, 200);
      rect(xTilePos, yTilePos, xTilePos + tileSize, tileSize + tileSize ); // my xy tile and tile size
      popMatrix();
      
      //player position
player.draw();
    }//end of loop for tiles
  } // end of draw tiles

}// end of draw

//declaring my boundaries as a new XY function inside checkPosition
//float posX = containerX;
//float posY = containerY;

//player standing square
class playerPosition {
  int startCol;
  int startRow;
  float tileSize;
  float x, y;

  playerPosition(int startCol, int startRow, float tileSize) {
    this.startCol = startCol;
    this.startRow = startRow;
    this.tileSize = tileSize;

    // find start tile position
    this.x =  containerX + startCol * tileSize;
    this.y =  containerY + startRow * tileSize;
  }
  // am I inside the conatiner? check
  void checkPosition() {
    // check boundary/container and tile boundary
    if (x < containerX) x = containerX; //for my x side
    if (x > containerX + containerSize - tileSize) x = containerX + containerSize;// stay in tile and cont.
    if (y < containerY) y = containerY;// for my Y side
    if (y > containerY + containerSize - tileSize) y = containerY + containerSize; // < 700 (or 720) same as X

    //check if it's not walkable 700x700 container! or 720
    if (x >= boundaryX && x <= boundaryX + boundaryWidth
      && y >= boundaryY && y <= boundaryY + boundaryY + boundaryHeight) {
      // need to find a stop, dont redo position
      x = containerX + startCol * tileSize; // bring me back to org tile
      y =  containerY + startRow * tileSize;
    }// end of boundary
  }//end of checkPosition
//}// end of player position

//draw player 
void draw() {
  pushMatrix();
  translate(50, 200);//container start/end
  fill(250, 242, 0);//yellow
  rectMode(CORNER);
  rect(x, y, tileSize, tileSize);
  popMatrix();
}//end of draw
}// end of draw

// start of wasd movements
void keyPressed() {
  if (key == 'w' || key == 'W') player.startRow --;
  if (key == 's' || key == 'S') player.startRow ++;
  if (key == 'a' || key == 'A') player.startCol --;
  if (key == 'd' || key == 'D') player.startCol ++;
  
// recheck player pistion on new cols/rows boundary
player.x = containerX + player.startCol * tileSize;
player.y = containerY + player.startRow * tileSize;
//checking if next movement tile is walkable
player.checkPosition();
}//end of keys */
