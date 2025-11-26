import processing.sound.*;
SoundFile boing, cat, phoneToy, xmas, dialup, dog, nokia, duck, guitar, drums, piano, bass;
//buttons
//buttonSound sounds = new Button(soundPress);
//buttonEffect effectButtons = new Button2
//button position
buttonPosition = new float [12];
//button img
PImage heart,bubble;
//colors
color pink, purple;

void setup(){
  size (800,800);
  //sounds imported
  /*
  sounds[1]boing= new SoundFile(this,"boing.mp3");
  sounds[2]cat= new SoundFile(this,"cat-meow.mp3");
  sounds[3]phoneToy= new SoundFile(this,"chinese-phone-toy.mp3");
  sounds[4]xmas= new SoundFile(this,"christmas-lights.mp3");
  sounds[5]dialup= new SoundFile(this,"dial-up.mp3");
  sounds[6]dog= new SoundFile(this,"dog-bark.mp3");
  sounds[7]nokia= new SoundFile(this,"nokia-ringtone.mp3");
  sounds[8]duck= new SoundFile(this,"rubber-duck.mp3");
  sounds[9]guitar= new SoundFile(this,"guitar.mp3");
  sounds[10]bass= new SoundFile(this,"bass.mp3");
  sounds[11]piano= new SoundFile(this,"piano.mp3");
  sounds[12]drums= new SoundFile(this,"drums.mp3");*/
  
  //load heart button
  heart= loadImage("heart.png");
  bubble= loadImage("bubble.png");
}

void draw(){
  //piano.play();
  //console
  color pink = color(247, 201, 244);
  fill (pink);
  noStroke();
  rectMode(CENTER);
  rect(height/2, width/2, 600, 500, 60);
  
  // heart button positions
  //image(bubble,100,100);
  
  for (int i = 0; i < 12; i++){
    float x = buttonPostitions[i][0];
    float y = buttonPositions [i][1];
    image(heart,50,50);
  }
    
  int space = 50;
  int x = 80;
  int y = 80;
  
  for (int i = 0; i < 12; i++){
    buttonPositions[i][0]= x + i/4 * space;
    buttonPositions[i][0]= y + i/3 * space;
    
  }

  
  
  
}
