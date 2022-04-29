void pause() {
  background(0);
  text("paused", width/2, 300);
  fill(#FF0303);
  rect(300, 400, 200, 100);
  textAlign(CENTER, CENTER);
  stroke(225);
  strokeWeight(2);
  fill(#FFE600);
  text("resume", width/2, 450);
}
void pauseClicks() {
  if (mouseX>300&&mouseY>400&&mouseX<500&&mouseY<500) {
    mode=GAME;
  }
}
