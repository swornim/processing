class bubble{
 float x ;
 float y ;
 float yspeed;
 float dim;
  bubble(float tempd){
     x = random(width);
    y = height;
    yspeed = random(0.5,1.5);
    dim = tempd;
  }
  void display(){
    stroke(255);
    fill(200,100);
    ellipse(x,y,dim,dim);
  }
  void ascend(){
   y = y - yspeed;
   x = x + random(-2,2);
  }
  void top(){
    if(y<32){
      y = 32;
    }
  }
}
    
   
