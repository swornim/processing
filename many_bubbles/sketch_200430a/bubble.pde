class bubble{
  float x;
  float y;
  float diameter;

  bubble(float tempd){
    x = random(width);
    y = random(height);
    diameter = tempd;
  }
  void display(){
    stroke(255,255,0);
    noFill();
    ellipse(x,y,diameter,diameter);
  }
  void ascend(){
    y--;
    x = x +random(-2,2);
  }
void top(){
  if (y<32){
    y = 32;
  }
}
}
