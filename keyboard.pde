void keyPressed() {
  if (key=='W'||key=='w')wkey=true;
  if (key=='S'||key=='s')skey=true;
  if (keyCode==UP)upkey=true;
  if (keyCode==DOWN)downkey=true;
}
void keyReleased() {
  if (key=='W'||key=='w')wkey=false;
  if (key=='s'||key=='s')skey=false;
  if (keyCode==UP)upkey=false;
  if (keyCode==DOWN)downkey=false;
}
