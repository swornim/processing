class Catcher{
  float x,y,r;
  Catcher(float tempr){
    r = tempr;
    x = 0;
    y = 0;
  }
 void setlocation(int tempx, int tempy){
  x = tempx;
  y = tempy;
  }
  void display(){
    stroke(0);
    fill(255,0,0);
    ellipse(x,y,r,r);
  }
  boolean intersect(Drop d){
    float distance  = dist(x,y,d.x,d.y);
    if(distance < r+d.r){
      return true;
      
    }else{
      return false;
    }
}
    
}  
