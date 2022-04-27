void game() {
  textSize(50);
  fill(#FF0000);
  text(leftscore, width/4, 100);
  fill(#0063FF);
  text(rightscore, 3*width/4, 100);
  text(timer, 3*width/4, 550); 
  timer=timer-1;

  fill(#FF0000);
  circle(leftx, lefty, leftd);
  fill(#0063FF);
  circle(rightx, righty, rightd);

  if (wkey==true)lefty=lefty-5;
  if (skey==true)lefty=lefty+5;
  if (upkey==true)righty=righty-5;
  if (downkey==true)righty=righty+5;
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
  println(dist, r, R);
  dist = dist(leftx, lefty, ballx, bally);
  if (dist<r+R) {
    vx=(ballx-leftx)/10;
    vy=(bally-lefty)/10;
  }
  dist = dist(rightx, righty, ballx, bally);
  if (dist<r+R) {
    vx=(ballx-rightx)/10;
    vy=(bally-righty)/10;
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
}
void gameClicks() {
}
