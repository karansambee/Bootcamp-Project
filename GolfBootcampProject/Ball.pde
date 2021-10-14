class Ball{
  
  PVector pos;
  int collisions;
  
  Ball(){
    pos = new PVector(random(50, 850),random(800,850));
    collisions = 0;
  }
  
  
 void drawBall(){
   
   stroke(255,255,0);
   strokeWeight(3);
   line(pos.x, pos.y, mouseX, mouseY);
    
   stroke(#FFFFFF);
   fill(#FFFFFF);
   circle(pos.x, pos.y, 20);
   

   
  }
  
  void checkIfInHole(){
    
    if (pos.x <= holeObject.holePos.x+15 && pos.x >= holeObject.holePos.x-15){
      
        if (pos.y <=holeObject.holePos.y+15 && pos.y>=holeObject. holePos.y-15){
          
          nextHole = true;
       }
    }
  }
  
  void checkIfHitObstacle(){
    
    
    if(pos.x + 20 > obstacleObject1.x &&
            pos.y + 20 > obstacleObject1.y &&
            pos.x - 20 < obstacleObject1.x + 200 &&
            pos.y - 20 < obstacleObject1.y + 25){
                ballObject.pos.x = random(50,850);
                ballObject.pos.y= random(700,850);
                capturedMouseX = ballObject.pos.x;
                capturedMouseY =ballObject.pos.y;
                collisions+=1;
            }
    if(pos.x + 20 > obstacleObject2.x &&
            pos.y + 20 > obstacleObject2.y &&
            pos.x - 20 < obstacleObject2.x + 200 &&
            pos.y - 20 < obstacleObject2.y + 25){
                ballObject.pos.x = random(50,850);
                ballObject.pos.y= random(700,850);
                capturedMouseX = ballObject.pos.x;
                capturedMouseY =ballObject.pos.y;
                collisions+=1;
         
            }
    if(pos.x + 20 > obstacleObject3.x &&
            pos.y + 20 > obstacleObject3.y &&
            pos.x - 20 < obstacleObject3.x + 200 &&
            pos.y - 20 < obstacleObject3.y + 25){
                ballObject.pos.x = random(50,850);
                ballObject.pos.y= random(700,850);
                capturedMouseX = ballObject.pos.x;
                capturedMouseY =ballObject.pos.y;
                collisions+=1;
         
            }
        
     
    }
        
  }
     
    
 
