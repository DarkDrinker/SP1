int currentPos = 0;

//single triangle
void obstacle(int tmp){
  currentPos +=tmp;
  int tx1 = 800-currentPos;
  int tx2 = 825-currentPos;
  int tx3 = 850-currentPos;
  fill(0);
  //x1,y1,x2,y2,x3,y3
  triangle(tx1,300,tx2,250,tx3,300);

}
  
  
  //double triangle
void doubleobstacle(int tmp){
  fill(0);
  currentPos +=tmp;
  int tx1 = 800-currentPos;
  int tx2 = 825-currentPos;
  int tx3 = 850-currentPos;
  int t2x1 = 825-currentPos;
  int t2x2 = 850-currentPos;
  int t2x3 = 875-currentPos;
  //x1,y1,x2,y2,x3,y3
  triangle(tx1,300,tx2,250,tx3,300);
  //x1,y1,x2,y2,x3,y3
  triangle(t2x1,300,t2x2,250,t2x3,300);
}
