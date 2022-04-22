void game() {
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);

  if (wkey==true)lefty=lefty-5;
  if (skey==true)lefty=lefty+5;

  circle(ballx, bally, balld);
}
void gameClicks() {
}
