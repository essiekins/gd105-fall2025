//tiles for x and y
int xTile= 15;
int yTile= 9;
float tileSize = 50;

//rows & collumns
//collums first
//xTiles= new xTiles{a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p}; 
//rows
//yTiles= new yTiles{0,1,2,3,4,5,6,7,8};
//9*15= 135 ^n^

//start tile A0 or A8

//tiles 2 states, safe/hole
// safe.state
// hole.state


void setup() {
  background(41, 73, 148);
  size(800, 800);
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
  //replacing start and end with squares
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
     
      
      }
 
    }
  }
