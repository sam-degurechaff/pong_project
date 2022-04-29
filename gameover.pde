void gameover() {
  img = loadImage("red poster.jpg");
  image(img, 0, 0);
  rect(300, 400, 200, 100);
  textAlign(CENTER, CENTER);
  textSize(40);
  stroke(225);
  strokeWeight(2);
  textSize(80);
  fill(0);
  rect(180, 78, 440, 80);
  fill(#FFE600);
  text("red victory", width/2, 100);
}

void gameoverClicks() {
  if (mouseX>300&&mouseY>400&&mouseX<500&&mouseY<500) {
    mode=INTRO;
  }
}
