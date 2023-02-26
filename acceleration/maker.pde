class maker{
  PVector location;
    PVector ball;
    PVector acceleration;
  maker(){
    location = new PVector(width/2,height/2);
    ball = new PVector(0,2);
     acceleration = new PVector();
  }
  void display(){
    ellipse(location.x,location.y, 24,24);
  }
  void move(){
    PVector mouse = new PVector(mouseX,mouseY);
    mouse.sub(location);
    mouse.setMag(0.5);
    acceleration = mouse;
   ball.add(acceleration);
  location.add(ball);
  ball.limit(5);
  }
  void loc(){
  if(location.x > width) location.x = 0 ;
  if(location.x < 0) location.x = width ;
  if(location.y >height) location.y = 0 ;
  if(location.y < 0) location.y = height;
  }
  
}
