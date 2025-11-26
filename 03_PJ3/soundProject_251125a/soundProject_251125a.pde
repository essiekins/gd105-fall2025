import processing.sound.*;
SoundFile boing, cat, phoneToy, xmas, dialup, dog, nokia, duck, guitar, drums, piano, bass;
//buttons
  buttonSound soundButtons = new Button(soundPress);
//buttonEffect effectButtons = new Button2
//colors
//colors
  color pink, purple;

void setup(){
  size (800,800);
  //sounds imported
  boing= new SoundFile(this,"boing.mp3");
  cat= new SoundFile(this,"cat-meow.mp3");
  phoneToy= new SoundFile(this,"chinese-phone-toy.mp3");
  xmas= new SoundFile(this,"christmas-lights.mp3");
  dialup= new SoundFile(this,"dial-up.mp3");
  dog= new SoundFile(this,"dog-bark.mp3");
  nokia= new SoundFile(this,"nokia-ringtone.mp3");
  duck= new SoundFile(this,"rubber-duck.mp3");
  guitar= new SoundFile(this,"guitar.mp3");
  bass= new SoundFile(this,"bass.mp3");
  piano= new SoundFile(this,"piano.mp3");
  drums= new SoundFile(this,"drums.mp3");
  
}

void draw(){
  //piano.play();
  //console
  color pink = color(247, 201, 244);
  fill (pink);
  noStroke();
  rectMode(CENTER);
  rect(height/2,width/2,600,500,60);
  
  class buttonSound {
  
  
  }
  
  
  
}
