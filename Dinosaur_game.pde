
float dinoX = 100; // set the initial x position of the dinosaur
float dinoY = 250; // set the initial y position of the dinosaur
float dinoYSpeed = 0; // set the initial speed of the dinosaur to 0
float jumpHeight = 150; // set the height of the jump
float gravity = 0.5; // set the strength of gravity
int lastJumpTime = 0; // set the time of the last jump to 0

void setup(){
  size(800,400);
}
void draw(){
  background(255);
  stroke(0);
  //lines which represent the ground/road
  line(0,310,800,310);
  stroke(150);
  line(0,290,800,290);
  
            // DINOSAUR
 dinoY += dinoYSpeed;
  // simulate gravity by increasing the speed of the dinosaur
  dinoYSpeed += gravity;
  // make sure the dinosaur stays on the ground line
  if (dinoY >= 200) {
    dinoY = 200;
    dinoYSpeed = 0;
  }
  // draw the dinosaur on the ground line
  drawDinosaur(dinoX, dinoY + 50, 50, 50);

}

void keyPressed() {
  // detect when the user presses space to jump
  if (key == ' ' && millis() - lastJumpTime > 750) {
    // speed of jump
    dinoYSpeed = -10;
    // sets lastjumptime til nuværende millisekund tid, for at at man ikke kan spamme spacebar.
    lastJumpTime = millis();
  }
}
