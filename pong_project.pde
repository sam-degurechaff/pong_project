
int mode;
final int INTRO=0;
final int GAME=1;
final int PAUSE=2;
final int GAMEOVER=3;
final int OPTIONS=4;
final int GAMEOVER02=5;
float vx, vy;
float leftx, lefty, leftd, rightx, righty, rightd;
float ballx, bally, balld;
float S2;
float dist;
boolean wkey, skey, upkey, downkey;
int leftscore, rightscore, timer;
float r, R;
PImage img;

void setup() {
  size(800, 600);
  mode=INTRO;
  leftx=0;
  lefty=height/2;
  leftd=200;

  rightx=width;
  righty=height/2;
  rightd=200;

  ballx=width/2;
  bally=height/2;
  balld=100;

  wkey=skey=upkey=downkey=false;

  r=leftd/2;
  R=balld/2;
  rightscore=leftscore=0;
  timer=100;
  S2=8;
  vx=random(-S2, S2);
  vy=random(-S2, S2);
  
  img = loadImage("blue poster.jpg");
}

void draw() {
  if (mode==INTRO) {
    intro();
  } else if (mode==GAME) {
    game();
  } else if (mode==PAUSE) {
    pause();
  } else if (mode==GAMEOVER) {
    gameover();
  } else if (mode==GAMEOVER02) {
    gameover02();
  } else {
    println("Mode error:"+mode);
  }
}
