// Rythm with animations pg.45 This one spins in the middle like a CD player.
void setup(){
  size(400,400);
  rectMode(CENTER);
}
void draw(){
background(160);
translate(width/2,height/2);
rotate(radians(frameCount*(360/(2*PI*10))));
rect(50,0,20,20);
// the sin function smoothens up FPS when needed.
sin(frameCount/20.0);
}
