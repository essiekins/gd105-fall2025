//start tile A0 or A8
int startCol = 0;
int startRow = 8;

//tiles for x and y
int xTile = 14;
int yTile = 8;
float tileSize = 50;
float x;
float y;

//need collisions set to container before tile states
//container 
float containerX = 50;
float containerY = 200;

//boundaries

float boundaryX = containerX + 150;
float boundaryY = containerY + 200;
float boundaryWidth = 200;
float boundaryHeight = 200;

playerPosition player;

void setup() {
 // background(41, 73, 148);
  size(800, 800);
  player = new playerPosition(startCol, startRow, tileSize);
}

//container
void draw() {
  background(41, 73, 148);
  noFill();
  stroke(255, 54, 0);//red
  strokeWeight(15);
  rect(containerX, containerY, xTile * tileSize, yTile * tileSize); //width for boundary 700
  //popMatrix();

  //start end zone drawing
  fill(12, 153, 20);//green
  strokeWeight(10);
  //end square
  //rectMode(CENTER);
  rect(50, 100, 700, 100);
  //start square
  rect(50, 600, 700, 100);
  // line(100,300,700,300); // testing y line

  //tiles for x and y
  noFill();
  stroke(255, 54, 0);//red
  for (int i = 0; i < xTile; i++) {
    for (int j = 0; j < yTile; j++) {
      rect(containerX + i * tileSize, containerY + j * tileSize, tileSize, tileSize);
    }//end of loop for tiles
 } // end of draw tiles
 
  //player position
  player.drawPlayer();
}// end of draw

//player standing square
class playerPosition {
  int startCol;
  int startRow;
  float tileSize;
  //float x, y;

  playerPosition(int startCol, int startRow, float tileSize) {
    this.startCol = startCol;
    this.startRow = startRow;
    this.tileSize = tileSize;
  }
  // stick to container limits
  void checkPosition(int changeCol,int changeRow) {
    startCol += changeCol;
    startRow += changeRow;
    
    //keep inside
    startCol = constrain(startCol, 0, xTile - 1);
    startRow = constrain(startRow, 0, yTile - 1);
        
    // check boundary/container
    float posX= containerX + startCol * tileSize;
    float posY= containerY + startRow * tileSize;
  
    // tiled zone
    if (posX >= boundaryX && posX < boundaryX + boundaryWidth
      && posY >= boundaryY && posY < boundaryY + boundaryHeight){
       
        //if not undo it
        startCol -= changeCol;
        startRow -= changeRow; 
        
      }// end of tiled zone
    }//end of checkPosition

//draw player 
void drawPlayer() {
 float x = containerX + startCol * tileSize;
 float y = containerY + startRow * tileSize;
 // pushMatrix();
 // translate(50, 200);//container start/end
  fill(250, 242, 0);//yellow
  //rectMode(CORNERS);
  noStroke();
  rect(x, y, tileSize, tileSize);
  
 // popMatrix();
}//end of draw
}// end of draw

// start of wasd movements
void keyPressed() {
  if (key == 'w' || key == 'W') player.checkPosition (0,1);
  if (key == 's' || key == 'S') player.checkPosition (0,1);
  if (key == 'a' || key == 'A') player.checkPosition (-1,0);
  if (key == 'd' || key == 'D') player.checkPosition (1,0);
  
// recheck player pistion on new cols/rows boundary
//player.x = containerX + player.startCol * tileSize;
//player.y = containerY + player.startRow * tileSize;
//checking if next movement tile is walkable
//player.checkPosition();
}//end of keys */
