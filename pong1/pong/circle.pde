class Circle{
float x,y,xspeed,yspeed;
 Circle(){
  x =width/2;
  y =height/2;
  xspeed = 3;
  yspeed = 2;
 }
 void display(){
   fill(255);
   ellipse(x,y,24,24);
 }
 void move(){
  x = x+ xspeed;
  y += yspeed;

  if(y<0 || y> height){
    yspeed = -yspeed;
  }
 }
 void death(){
  if( x > width - 20 || x < 20){
   x = width/2;
   y = height/2;
   xspeed = -xspeed;
   //delay(2000);
  }
 }
 boolean intersect(Paddle g){
 float disx = abs(x - g.ex);
   float disy = abs(y - g.ey);
   if(disx < g.d && disy < g.e){
    return true; 
   }else{
     return false;
 }
 }
}
