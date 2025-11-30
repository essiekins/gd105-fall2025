//var contSize = 600;
//var tile= 60;

void setup(){
  background(41, 73, 148);
  size(800,800);
}

void draw(){
  pushMatrix();
  color(189, 226, 230);
  rectMode(CENTER);
  rect(height/2,width/2,600,600);
  popMatrix();
  
  pushMatrix();
  color(51, 143, 56);
  rectMode(CENTER);
  rect(height/2,width/2,60,60);
  popMatrix();

}
