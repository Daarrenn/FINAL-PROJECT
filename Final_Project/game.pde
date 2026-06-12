void game() {
  background(0);
  
  //birds(?)
  circle(onex, oney, oned);
  circle(twox, twoy, twod);
  
  //attempting spike
  rightoney = rightoney + 3;
  spike(rightoney, 3);
  spikeright(width, rightoney);

  
  //spike movement

  
  
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
  grav = grav + 0.2;
  gravtwo = gravtwo + 0.2;
  
  //move one
  onex = onex + onevx;
  oney = oney + onevy + grav;
  
  //move two
  twox = twox + twovx;
  twoy = twoy + twovy + gravtwo;
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
   onevy = -9;
   grav = 3;
 }
 if(keyCode == UP) {
   twovy = -9;
   gravtwo = 3;
}
}

void spikeright(float x, float y) {
  pushMatrix();
  translate(x, y);
  fill(255);
  triangle(0, 25, 0, -25, -50, 0);
  popMatrix();
}

void spike(float variable, float speed) {
  variable = variable + speed;
    if(variable < 0 || variable > height) {
    variable = variable * -1;
  }
}
