void game() {
  background(0);
  textSize(50);
  fill(#FF0000);
  text(leftscore, width/4, 100);
  fill(#0063FF);
  text(rightscore, 3*width/4, 100);
  text(timer, 3*width/4, 550); 
  timer=timer-1;
  stroke(225);
  strokeWeight (6);
  fill(#FF0000);
  circle(leftx, lefty, leftd);
  fill(#0063FF);
  circle(rightx, righty, rightd);
  rect(10, 50, 50, 50);

  if (wkey==true)lefty=lefty-5;
  if (skey==true)lefty=lefty+5;

  if (AI==false) {
    if (upkey==true)righty=righty-5;
    if (downkey==true)righty=righty+5;
  } else {
    if (ballx<400||bally>righty) {
      righty=righty+4.5;
    }
    if (ballx<400||bally<righty) {
      righty=righty-4.5;
    }
  }

  fill(225);
  circle(ballx, bally, balld);
  if (timer<0) {
    ballx=ballx+vx;
    bally=bally+vy;
  }
  //if (ballx<50/2||ballx>width-50/2) {
  //vx=vx*-1;
  //}
  if (bally<100/2||bally>height-100/2) {
    vy=vy*-1;
  }
  if (bally<50) {
    bally=51;
  }
  if (bally>550) {
    bally=549;
  }
  println(dist, r, R);
  dist = dist(leftx, lefty, ballx, bally);
  if (dist<r+R) {
    vx=(ballx-leftx)/12;
    vy=(bally-lefty)/12;
  }
  dist = dist(rightx, righty, ballx, bally);
  if (dist<r+R) {
    vx=(ballx-rightx)/12;
    vy=(bally-righty)/12;
  }
  if (ballx<0) {
    rightscore++;
    ballx=width/2;
    bally=height/2;
    timer=100;
  }
  if (ballx>800) {
    leftscore++;
    ballx=width/2;
    bally=height/2;
    timer=100;
  }
  if (leftscore==40) {
    mode=GAMEOVER;
  }
  if (rightscore==40) {
    mode=GAMEOVER02;
  }
  if (righty>500) {
    righty=500;
  }
  if (righty<100) {
    righty=100;
  }
  if (lefty>500) {
    lefty=500;
  }
  if (lefty<100) {
    lefty=100;
  }
}
void gameClicks() {
  if (mouseX>10&&mouseY>50&&mouseX<60&&mouseY<100) {
    mode=PAUSE;
  }
}
