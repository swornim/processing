Paddle paddleleft;
Paddle paddleright;

Circle circle;
void setup(){
  size(640,500);
circle = new Circle();

paddleleft = new Paddle(30, 35,10,100,0);
paddleright = new Paddle(width-30, 35,10,100,0);


}
void draw(){
   stroke(255);
line(width/2,0,width/2,height);
  background(50);
  
  if(circle.intersect(paddleleft)){
    circle.xspeed = - circle.xspeed;
  
  }
  circle.display();
  circle.move();
  circle.death();
  
  paddleleft.display();
  paddleleft.move();
  paddleright.display();
  paddleright.move();
  
if(circle.intersect(paddleright)){
    circle.xspeed = - circle.xspeed;  
  }
}
void keyPressed(){
  if(key == CODED){
   if(keyCode == UP){
     paddleright.yspeed = -5;
   }
    
   if(keyCode == DOWN){
     paddleright.yspeed = 5;
   }
    
  }
  if(keyCode == 'w'|| keyCode == 'W'){
     paddleleft.yspeed = -5;
    }
    if(keyCode == 's'|| keyCode == 'S'){
     paddleleft.yspeed = 5;
  }
}
  void keyReleased(){
    if(key == CODED){
   if(keyCode == UP){
     paddleright.yspeed = 0;
   }
   
   if(keyCode == DOWN){
     paddleright.yspeed = 0;
   }
  
  }
  if(keyCode == 'w'|| keyCode == 'W'){
     paddleleft.yspeed = 0;
  }
   if(keyCode == 's'|| keyCode == 'S'){
     paddleleft.yspeed = 0;
  }
  }
