void gameover02() {  


  image(img, -50, -200, 1000, 1500);
  rect(300, 400, 200, 100); 
  textAlign(CENTER, CENTER);
  textSize(40);
  fill(0);
  text("restart",width/2,440);
  
  stroke(0);
  strokeWeight(2);
  textSize(80);
  fill(0);
  rect(180, 78, 440, 80);
  fill(225);
  text("blue victory", width/2, 100);
}


void gameover02Clicks() { 
  if (mouseX>300&&mouseY>400&&mouseX<500&&mouseY<500) {
    mode=INTRO;
  }
}
