color backgroundColor = #0a8116;

Hole holeObject;
Ball ballObject;
Obstacle obstacleObject1;
Obstacle obstacleObject2;
Obstacle obstacleObject3;

int hits;
int hole;

boolean nextHole;
boolean move;

float capturedMouseX;
float capturedMouseY;

void setup(){
  size(900,900);
  //no cursor
  
  holeObject = new Hole();
  ballObject = new Ball();
  obstacleObject1 = new Obstacle(100, 350);
  obstacleObject2 = new Obstacle(400, 500);
  obstacleObject3 = new Obstacle(700, 650);
  
  hits = 0;
  hole = 0;
  
  nextHole = false;
  move = false;

}

void draw(){
  

  drawCourt();
  holeObject.drawHole();
  
  obstacleObject1.drawObstacle();
  obstacleObject1.moveObstacle();
  
  obstacleObject2.drawObstacle();
  obstacleObject2.moveObstacle();
  
  obstacleObject3.drawObstacle();
  obstacleObject3.moveObstacle();
  
  ballObject.drawBall();
  ballObject.checkIfHitObstacle();
  
  textSize(25);
  fill(#FFFFFF);
  text("Hits: " + hits,740,45);
  text("Hole: "+ hole, 740, 85);
  text("Collisions: " + ballObject.collisions, 740, 125);
  text("By Karan Sambee", 20, 875);
  
  ballObject.checkIfInHole();
  
  if (nextHole == true) {
    
    hole+=1;
    
    nextHole = false;
    ballObject.pos.x = random(50,850);
    ballObject.pos.y= random(700,850);
    
    holeObject.holePos.x = random(250,700);
    holeObject.holePos.y = random(150,250);
    
    capturedMouseX =  ballObject.pos.x;
    capturedMouseY =  ballObject.pos.y;

  }
  
  if (move==true){
    ballObject.pos.x = ballObject.pos.x + (capturedMouseX -ballObject.pos.x)/40;
    ballObject.pos.y = ballObject.pos.y + (capturedMouseY - ballObject.pos.y)/40;
    
  
  }
}



void drawCourt(){
  noStroke();
 
 for (int i=0; i<1000; i+=100){
  if (backgroundColor == #0a8116){
    backgroundColor = #2f781f;
  } else
    { backgroundColor = #0a8116;
  }
  
  fill(backgroundColor);
  rect(i,0,100,900);
  
 }   
}


void mousePressed(){
  
  hits+=1;
  move = true;
  capturedMouseX = mouseX;
  capturedMouseY = mouseY;
  
  
}
