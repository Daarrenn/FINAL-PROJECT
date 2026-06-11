int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

float grav, gravtwo;

//keyyyyyyys
boolean wkey, upkey;

//starting game
int countdown = 180;

//birds(?)
float onex, oney, onevx, onevy, oned;
float twox, twoy, twovx, twovy, twod;

void setup() {
  size(600, 800);
  mode = GAME;
  textAlign(CENTER, CENTER);
  
  
  //gravity
  grav = 2;
  gravtwo = 2;
  
  //one
  onex = width/2;
  oney = height/2+100;
  onevx = 2;
  oned = 80;
  
  //two
  twox = width/2;
  twoy = height/2-100;
  twovx = -2;
  twod = 80;
  

}


void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE){
    pause();
  } else if (mode == GAMEOVER){
    gameover();
  }
}
