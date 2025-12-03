  //for grid lines
  float x = 0;
  float y = 0;
  float xSpacing= 0;
  float ySpacing=0;
  
  void setup(){
    background(41, 73, 148);
    size(800,800);
  }
  //container
  void draw(){
    pushMatrix();
    noFill();
    rectMode(CENTER);
    strokeWeight(5);
    rect(height/2,width/2,600,600);
    popMatrix();
   
    //laying out start end zone positions
    line(100,200,700,200);// end zone (width)
    line(100,600,700,600);// start zone (width)
    //line(200,100,200,600);// (height)
   
    //add lines in x direction
    // figure out in between space later
    /*
    x= 200;
    line(x,100,x,600);
    x = x + 60;
    line(x,100,x,600);
    x = x + 60;
    line(x,100,x,600);
    */
    
    //line(100,300,700,300); // testing y line
    
    // x lines. remember 600 square size not counting as a line. use 720.
    x= 100;// starting point
    xSpacing = (720 - 200) / 6 ;
    while (x < 700){ 
      line(x,200,x,600);
      x= x + xSpacing ; //add my lines with this size
    }
    // y lines
    y= 100;
    ySpacing = (700 - 200)/ 6;
    while (y < 700){
      line(100,y,700,y);
      y= y + ySpacing;
    }
    
  }
  
