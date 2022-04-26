void game() {
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);

  if (wkey==true)lefty=lefty-5;
  if (skey==true)lefty=lefty+5;
  if (upkey==true)righty=righty-5;
  if (downkey==true)righty=righty+5;

  circle(ballx, bally, balld);
  ballx=ballx+vx;
  bally=bally+vy;
}
void gameClicks() {
  dist = dist(leftx, lefty, ballx, bally);
  if (dist<r+R||dist>rightd+balld) {
    vx=vx*-1;
  }
}
