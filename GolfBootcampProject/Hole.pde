class Hole{
  
  PVector holePos;
  
  Hole(){
    
   holePos = new PVector(random(250, 600),random(150,200));

  }
  
  void drawHole(){
    
    fill(#C2B280);
    ellipse(holePos.x+20,holePos.y,350,140);
   
    fill(#000000);
    circle(holePos.x,holePos.y,30);
    
    fill(#FFFFFF);
    rect(holePos.x-5,holePos.y-95,9,95);
    
    fill(200,0,0);
    triangle(holePos.x-5, holePos.y-100,holePos.x-5,holePos.y-70,holePos.x+30,holePos.y-85);
  }
  
  
}
