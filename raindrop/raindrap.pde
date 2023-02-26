class bubble{
  float x;
  float y;
  float d;
  float yspeed;
  bubble(float tempd){
    d = tempd;
    x = random(width);
    y = 0;
    yspeed = random(1,5);
  }
  bubble(float X, float Y){
    x = X;
    y = Y;
  }
  boolean overlap(particle other){
    float d = dist(x,y,other.x,other.y);
  if (d< r + other.r){
    return true;
  } else {
    return false;
  }
  }
  void display(){
    fill(0,0,255);
    ellipse(x,y,d,d);
  }
  void decend(){

    y = y + yspeed;
    if (y> height){
      y = 0;
    }
  }
  void postion(){
    x = mouseX;
    y = mouseY;
  }
}
