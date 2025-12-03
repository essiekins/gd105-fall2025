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
    
    //laying out start end zone positions
    pushMatrix();
    stroke(12, 153, 20);//green
    strokeWeight(10);
    /*
    line(100,180,700,180);// end zone barrier (width)
    line(100,600,700,600);// start zone (width)
    line(x,100,x,600);// testing x line
    */
    //replacing start and end with squares
    //end square
    rectMode(CENTER);
    rect(400,150,600,100);
    //start square
    rect(400,650,600,100);
   // line(100,300,700,300); // testing y line
    popMatrix();
    
    // x lines. remember 600 square size not counting as a line. use 720.
    //remember to switch start/end lines for squares later because of that ^
    
    x= 100;// starting point
    xSpacing = (720 - 200) / 6 ;
    stroke(209, 40, 190); //pink
    while (x < 700){ 
      line(x,200,x,600);
      x= x + xSpacing ; //add my lines with this size
    }
    // y lines
    y= 200; //starting point
    stroke(209, 172, 40);// yellow
    ySpacing = (600 - 200)/ 7;
    while (y < 600){
      line(100,y,700,y);
      y= y + ySpacing;
    }
    
  }
  
