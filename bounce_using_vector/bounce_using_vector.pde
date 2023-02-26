Ball b;
void setup(){
  size(640,400);
     b = new Ball();
}
void draw(){

  background(50);
  b.display();
}


class Ball{
  PVector location;
PVector velocity;
Ball(){
 location = new PVector(width/2,height/2);
  velocity = new PVector(3,2);
}
void display(){
  ellipse(location.x, location.y,24,24);

  location.add(velocity);
  if((location.x>width) || (location.x<0)){
   velocity.x = - velocity.x; 
  }else if(location.y>height || location .y < 0){
    velocity.y = - velocity.y;
  }
}
  
}
