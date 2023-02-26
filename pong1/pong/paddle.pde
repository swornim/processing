class Paddle{
   float ex,ey,xspeed,yspeed,d,e;
 Paddle(float tempx, float tempy, float tempd1, float tempd2,float tempyspeed){
  ex = tempx;
  ey = tempy;
  d = tempd1;
  e = tempd2;
  yspeed = tempyspeed;
}
void display(){
 fill(255);
 rectMode(CENTER);
 rect(ex,ey,d,e,5,5,5,5);
}
void move(){
  ey = ey + yspeed;
  ey = constrain(ey,0,height);
}
}
