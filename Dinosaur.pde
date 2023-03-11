void drawDinosaur(float x, float y, float w, float h) {
  noStroke();
  fill(255,0,0);
  rect(x, y, w, h); // draw the body
  //rect(x + w, y + h / 2, w / 2, h / 2); // draw the tail
  //rect(x - w / 4, y - h / 4, w / 4, h / 4); // draw the head
}
