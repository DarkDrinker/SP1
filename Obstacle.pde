int currentPos = 0;
void obstacle(int tmp){
  currentPos +=tmp;
  int tx1 = 800-currentPos;
  int tx2 = 825-currentPos;
  int tx3 = 850-currentPos;
  //single triangle
  fill(0);
  //x1,y1,x2,y2,x3,y3
  triangle(tx1,300,tx2,250,tx3,300);
  //println(pixels[(300*width+tx1)]);
  
  //int colorPoint1 = get(int(tx1),300);
  
}
  
  
  //double triangle
