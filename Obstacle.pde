class Obstacle {
   int x, y, z;
  float speed = 4;
  int fixedX=300;
  int fixedY=250;
  boolean isDouble; 
  boolean isTriple;
 
  
  Obstacle(int x, int y, int z,boolean g, boolean h,float speed) {
    this.x = x;
    this.y = y;
    this.z = z;
    this.isDouble = g;
    this.isTriple = h;
    this.speed = speed;
    
  }
  
  void increaseSpeed(float tmp1) {
    this.speed = tmp1;
    
  }
  
  void move() {
    // Move obstacles
    x -= speed;
    y -= speed;
    z -= speed;
    // Draw sky
    fill(0);
    triangle(x, fixedX, y, fixedY, z, fixedX);
    if(isDouble){
    triangle(x+25, fixedX, y+25, fixedY, z+25, fixedX);
    }
    if(isTriple){
      triangle(x+50, fixedX, y+50, fixedY, z+50, fixedX);
    }
  }
  
  void reset() {
    // Reset sky position
    x = 800;
    y = 825;
    z = 850;
  }
}
