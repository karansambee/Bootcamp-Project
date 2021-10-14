class Obstacle{
  
  int x;
  int y;
  int speed;
  boolean moveBack;
 
  Obstacle(int obstacleX, int obstacleY){ 
    x = obstacleX;
    y = obstacleY;
    speed = 5;
    moveBack = false;
  }
  
  void drawObstacle(){
    
    fill(#26abff);
    rect(x,y,200,25);
    
    x = x + speed;
    
  }
  
  void moveObstacle(){
    if (x>width-200 || x<0){
      speed = speed*-1;}
 
  }
       
}
  
 
