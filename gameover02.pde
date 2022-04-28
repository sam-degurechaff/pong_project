void gameover02() {  
    img = loadImage("blue poster.jpg");
  image(img, 0, 0);
  rect(300, 400, 200, 100);
  textAlign(CENTER, CENTER);
  stroke(0);
  strokeWeight(2);
  fill(255);
  text("blue victory", width/2, 100);
}


void gameover02Clicks() { 
  if (mouseX>300&&mouseY>400&&mouseX<500&&mouseY<500) {
    mode=INTRO;
  }
}
