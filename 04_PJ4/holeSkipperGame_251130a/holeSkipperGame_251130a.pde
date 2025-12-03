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
    stroke(255, 54, 0);//red
    strokeWeight(20);
    rect(height/2,width/2,600,600);
    popMatrix();
    
    /*
    //laying out start end zone positions
    pushMatrix();
    stroke(12, 153, 20);//green
    strokeWeight(10);
    line(100,180,700,180);// end zone barrier (width)
    line(x,100,x,600);// testing x line
    line(100,300,700,300); // testing y line
    popMatrix();
    */
    
    // x lines. remember 600 square size not counting as a line. use 720.
    x= 100;// starting point
    xSpacing = (720 - 200) / 7 ;
    stroke(209, 40, 190); //pink
    while (x < 700){ 
      line(x,200,x,600);
      x= x + xSpacing ; //add my lines with this size
    }
    // y lines
    y= 100;
    stroke(209, 172, 40);// yellow
    ySpacing = (700 - 200)/ 7;
    while (y < 700){
      line(100,y,700,y);
      y= y + ySpacing;
    }
    
  }
  
