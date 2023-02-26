class Snake{
  float x;
  float y;
  float xspeed;
  float yspeed;
  float r;
  float t;
  Snake(){
   x = width/2;
   y = height/2;
   xspeed = 3;
   yspeed = 2;
   r = 15;
  }
  void display(){
    fill(255);
 for (int i = 2; i < r; i++ ) {
     rect(x + i*r, y , r, r);
 }
   
  }

  void move(){
    
   
  if(keyPressed){
   if (key == CODED){
    if (keyCode == RIGHT){
    x+=2; 

     if(x > width || x < 0 ){
      x = xspeed;
     }
    }else if (keyCode== LEFT){
     x-=2; 
     if(x > width || x < 0 ){
      x = width;
    
   }
  }
  
 }
 if(keyPressed){
    if (key == CODED){
   if (keyCode == UP){
    y -= 2;
    if(y > height || y< 0){
      y = height;
    }
  }
   if (keyCode == DOWN){
    y += 2;
    if(y > height || y< 0){
      y = 0;
 }
 }
  }
}
  }
}
}
