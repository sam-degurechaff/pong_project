void intro() {
  img = loadImage("bear arms.jpg");
  image(img, -100, 00, 950, 580); 
  textAlign(CENTER, CENTER);
  textSize(80); 
  fill(225);
  text("styart", width/2, 440);  
  rect(0, 88, 1000, 70);
  fill(0);
  text("pong_red_alert.exe", width/2, 100);
  fill(#E5B810);
  rect(300, 400, 200, 100); 
  textSize(40);  
  fill(225);
  text("styart", width/2, 440);
} 

void introClicks() { 
  if (mouseX>300&&mouseY>400&&mouseX<500&&mouseY<500) {
    mode=GAME;
  }
}
