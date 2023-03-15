void drawDinosaur(float x, float y, float w, float h) {
  noStroke();
  fill(255,0,0);
  rect(x, y, w, h); // draw the body
  //rect(x + w, y + h / 2, w / 2, h / 2); // draw the tail
  fill(150,0,200);
  rect(x + w, y-w/2, w / 2, h / 2); // draw the head
  fill(255);
  rect(x + w+(w/4), y-w/3, w / 10, h / 10);// draw the eyes
}
