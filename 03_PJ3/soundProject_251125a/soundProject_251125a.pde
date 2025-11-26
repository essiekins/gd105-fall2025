import processing.sound.*;
SoundFile[] sounds =  new SoundFile[12];
//button position
float[][] buttonPositions = new float[12][3];
//button img
PImage heart,bubble;
//colors
color pink;

void setup(){
  size (800,800);
  //sounds imported
  sounds[0]= new SoundFile(this,"boing.mp3");
  sounds[1]= new SoundFile(this,"cat-meow.mp3");
  sounds[2]= new SoundFile(this,"chinese-phone-toy.mp3");
  sounds[3]= new SoundFile(this,"christmas-lights.mp3");
  sounds[4]= new SoundFile(this,"dial-up.mp3");
  sounds[5]= new SoundFile(this,"dog-bark.mp3");
  sounds[6]= new SoundFile(this,"nokia-ringtone.mp3");
  sounds[7]= new SoundFile(this,"rubber-duck.mp3");
  sounds[8]= new SoundFile(this,"guitar.mp3");
  sounds[9]= new SoundFile(this,"bass.mp3");
  sounds[10]= new SoundFile(this,"piano.mp3");
  sounds[11]= new SoundFile(this,"drums.mp3");
  
  //load buttons
  heart= loadImage("heart.png");
  bubble= loadImage("bubble.png");
  
  //declare space between buttons
  int space = 50;
  int sideX = 80;
  int sideY = 80;
  
  for (int i = 0; i < 12; i++){
    buttonPositions[i][0]= sideX + (i * 4) * space;
    buttonPositions[i][1]= sideY + ( i / 4) * space;
  }   
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
  for (int i = 0; i < 12; i++){
    float x = buttonPositions[i][0];
    float y = buttonPositions [i][1];
    image(heart,x,y);
  }
}

void buttonPressed(){
  for (int i = 0; i <12; i++){
    float x= buttonPositions[i][0];
    float y= buttonPositions[i][1];
    
     // if definetly inside of heart position play sound
    if(abs(mouseX - x) < heart.width/2 &&
      abs(mouseY- y) < heart.height/2){
        //test play
        sounds[i].play();
      }
  }
}
