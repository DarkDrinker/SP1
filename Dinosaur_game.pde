int elapsedSeconds = 0;
int ellapsedMillis = 1000;
int nextTime = 0;
int previousTime = 0;

int duration = 4000;
int timer = 0;
int choosenObstacle = 0;
int speedOfObstacles = 4;
Obstacle obstacle1, obstacle2, obstacle3;


int dinoX = 100; // set the initial x position of the dinosaur
int dinoY = 250; // set the initial y position of the dinosaur
float dinoYSpeed = 0; // set the initial speed of the dinosaur to 0
float jumpHeight = 200; // set the height of the jump
float gravity = 0.5; // set the strength of gravity
int lastJumpTime = 0; // set the time of the last jump to 0

void setup(){
  size(800,400);
  obstacle1 = new Obstacle(800,825,850,false,false,speedOfObstacles);
  obstacle2 = new Obstacle(800,825,850,true,false,speedOfObstacles);
  obstacle3 = new Obstacle(800,825,850,true,true,speedOfObstacles);
  
}
void draw(){
  background(255);
  stroke(0);
  //lines which represent the ground/road
  line(0,310,800,310);
  stroke(150);
  line(0,290,800,290);
  
  // to keep track of time/score
  if (millis()-previousTime>= ellapsedMillis) {
    previousTime = millis();
    elapsedSeconds +=1;
    
  }
  int score = elapsedSeconds*100;
  fill(0);
  textSize(20);
  textAlign(CENTER);
  text("Score:  "+score, 700 ,100);
  
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
  
  drawDinosaur(dinoX, dinoY +50 , 50, 50);
  
  if(choosenObstacle == 0) {
    obstacle1.move();
    //obstacle(speedOfObstacles);
  } else if (choosenObstacle==1) {
    obstacle2.move();
   // doubleobstacle(speedOfObstacles);
  } else {
    if(elapsedSeconds>=16){
    obstacle3.move();
    } else {
      obstacle2.move();
    }
      
  }
  if(millis() - timer > duration){
    timer = millis();
    obstacle1.reset();
    obstacle2.reset();
    obstacle3.reset();
    choosenObstacle = int(random(3));
  }
  
    
  // "object" collision by watching the bottom corners and middle. for change of color. 
 color pointBF = get(dinoX+49,dinoY+99);
 color pointBB = get(dinoX,dinoY+99);
 color pointBM = get(dinoX+25,dinoY+99);
    if(pointBB == -16777216 || pointBF == -16777216 || pointBM == -16777216){
      noLoop();
      background(255);
      textAlign(CENTER);
      textSize(40);
      text("SCORE: "+elapsedSeconds*100,400,200);
  }
  
  
  // speed increases af certain amount of time.
  if(elapsedSeconds > 15){
    //speed increase after 15 seconds
    boolean firstspeedincrease = true;
    if(firstspeedincrease){
      firstspeedincrease = false;
      obstacle1.increaseSpeed(6);
      obstacle2.increaseSpeed(6);
      obstacle3.increaseSpeed(6);
      duration = 2700;
    }
  }
  if(elapsedSeconds > 31){
    //speed increase after 30 seconds. 
    boolean secondspeedincrease = true;
      if(secondspeedincrease){
        secondspeedincrease = false;
      obstacle1.increaseSpeed(8);
      obstacle3.increaseSpeed(8);
      duration = 2200;
      }
    }
}

void keyPressed() {
  // detect when the user presses space to jump
  if (key == ' ' && millis() - lastJumpTime > 750 ) {
    // speed of jump
    dinoYSpeed = -10;
    // sets lastjumptime til nuværende millisekund tid, for at at man ikke kan spamme spacebar.
    lastJumpTime = millis();
  }
}
