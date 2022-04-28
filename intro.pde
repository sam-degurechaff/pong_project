void intro() {
  rect(300, 400, 200, 100);
} 

void introClicks() { 
  if (mouseX>300&&mouseY>400&&mouseX<500&&mouseY<500) {
    mode=GAME;
  }
}
