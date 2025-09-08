// Animation Basics pg.42-44
// this is a run only once kind of command.
void setup(){
size(400,400);
}
//void draw works at 30 or 60FPS. It draws per frame, ONLY ONCE.
void draw(){
  background(160);
  // rect(frameCount,30,10,10); uncoment this to try out another animation
//roating rectangle
// comment in the rest of this if trying above animation^
translate(frameCount,30);
rotate(radians(frameCount*(360/(2*PI*10))));
rect(0,0,20,20);
}
