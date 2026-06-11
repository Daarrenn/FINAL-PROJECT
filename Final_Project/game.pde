void game() {
  background(0);
  
  
  circle(onex, oney, oned);
  circle(twox, twoy, twod);
  
  //counting
  countdown = countdown - 1;
  fill(255);
  textSize(50);
  if (countdown < 181 && countdown > 120) {
    text("3", width/2, height/2);
  }
  if (countdown < 121 && countdown > 60) {
    text("2", width/2, height/2);
  }
  if (countdown < 61 && countdown > 0) {
    text("1", width/2, height/2);
  }
  
  if (countdown < 0) {
  //accerleration
  grav = grav - 0.2;
  gravtwo = gravtwo - 0.2;
  
  //move one
  onex = onex + onevx;
  oney = oney + onevy - grav;
  
  //move two
  twox = twox + twovx;
  twoy = twoy + twovy - gravtwo;
  }
  //top bottom walls
    //top bottom walls
  if(onex < oned/2 || onex > width-oned/2) {
    onevx = onevx * -1;
  }
  if(twox < twod/2 || twox > width-twod/2) {
    twovx = twovx * -1;
  }
  
}

void keyPressed(){
 if(key == 'w' ||key  == 'W') {
   onevy = -8;
   grav = -2;
 }
 if(keyCode == UP) upkey = true;
 
}
