// possible pen plotter piece
void setup() {
  size(432, 432);
  noFill();
}
void draw() {
  background(255);
  //island
  line(100, 215, 315, 215); //horizon or ground
  //under-island. Don't touchy!
  line(100, 215, 120, 225);
  line(120, 225, 110, 240);
  line(110, 240, 130, 260);
  line(130, 260, 120, 270);
  line(120, 270, 145, 290);
  line(145, 290, 165, 280);
  line(165, 280, 220, 310);
  line(220, 310, 280, 280);
  line(280, 280, 295, 265);
  line(295, 265, 285, 255);
  line(285, 255, 295, 245);
  line(295, 245, 310, 240);
  line(310, 240, 315, 215);

  //buildings
  //BDG1
  noFill();
  rectMode(CENTER);
  rect(130, 185, 30, 60);//base 1st bdg.
  rect(130, 145, 20, 20); //mid-tier 1st bdg.
  rect(130, 128, 10, 15); //top tier
  line(130, 120, 130, 100); //antenna
  //BDG2
  line(145, 170, 170, 170); //horizontal
  line(170, 170, 170, 195); //downward
  //BDG3
  rectMode(CORNER);
  rect(160, 195, 40, 20); //im a square yay!
  //BDG4
  line(165, 170, 165, 160); //vertical
  line(165, 160, 180, 160); //horizontal
  line(180, 160, 190, 195); //incline
  //BDG5
  line(190, 182, 220, 182); //horizonal
  line(190, 182, 190, 190); //vertical-left
  line(220, 182, 220, 215); //vertical-right
  //BDG6
  line(220, 200, 260, 200); //horizontal
  line(260, 200, 260, 215); //vertical
  //BDG7
  line(245, 200, 245, 160); //vertical-left
  line(245, 160, 270, 160); //horizontal
  line(270, 160, 270, 215); //vertical-right
  //BDG8
  line(260, 160, 260, 140); //vertical-left
  line(260, 140, 295, 140); //horizontal
  line(295, 140, 295, 215); //vertical-right

  // Better Sun
  //translate(0,0,216);
  //circle(0,20,20);


  //here comes the sun do do do do...
  circle(216, 110, 40);
  //sun rays
  line(216, 50, 216, 90); //north
  line(216, 130, 216, 170); //south
  line(195, 110, 155, 110); //west
  line(235, 110, 275, 110); //east
  //diagonal sun rays
  line(200, 100, 190, 90); //upper-left
  line(232, 100, 242, 90); //upper-right
  line(201, 125, 190, 135); //lower-left
  line(231, 125, 241, 135); //lower-right
}
