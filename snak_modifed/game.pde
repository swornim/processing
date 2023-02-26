class Snake{
 int x,y,scl,xspeed,yspeed,fx,fy,total;
  int[] tailx;
  int[] taily;
  Snake(){
    x = 200;
    y = height/2;
    scl = 15;
    xspeed = 1;
    yspeed = 0;
    
    total = 0;
     tailx = new int[total];
     taily = new int[total];
    pick_food();
  }
    
  void display(){
    fill(190);
    for(int i = 0; i < total; i++){
     rect(tailx[i],taily[i],scl,scl,4,4,4,4);
    }
    rect(x,y,scl,scl,4,4,4,4);
  }
  
  void keyPressed(){
    if( key == CODED){
      if(yspeed == 0){
        if(keyCode == UP){
          yspeed = -1;
          xspeed = 0;
        }
      if(keyCode  == DOWN){
        yspeed = 1;
        xspeed = 0;
      }
      }
      if( xspeed == 0){
        if(keyCode == LEFT){
          xspeed = -1;
          yspeed = 0;
        }
      if(keyCode  == RIGHT){
        xspeed = 1;
        yspeed = 0;
      }
      }
    }
  }
  void food(){
    fill(random(255),random(255),random(255));
    rect(fx*scl,fy*scl,scl,scl,4,4,4,4);
  }
  void eatfood(){
    float dis = dist(x,y,fx*scl,fy*scl);
    if(dis < 3){
      total++;
      tailx = expand(tailx,total);
      taily = expand(taily,total);
      pick_food();
    }
      
    }
  
 
  void pick_food(){
    fx = floor(random(width/scl));
    fy = floor(random(height/scl));
  }
    
     void movebody(){
    for(int i = 0; i < tailx.length -1; i++){
    tailx[i] = tailx[i+1];
    taily[i] = taily[i+1];
    }if(total>0){
  tailx[total-1] = x;
  taily[total-1] = y;
    }
     x=x+xspeed*scl;
   y=y+yspeed*scl;
  x = constrain(x,0,width-scl);
  y = constrain(y,0,height-scl);
  }
  void death(){
   for(int i = 0; i< taily.length;i++){
   int posx = tailx[i];
   int posy = taily[i];
   float dis = dist(x,y,posx,posy);
   if(dis < 1){
             println("resetting the game");
        println("total=0");
     total = 0;
     tailx = new int[0];
     taily = new int[0];
     delay(500);
   }
   }
  }
 void printscore(){
    fill(255);
    textAlign(RIGHT);
    textSize(20);
  text(total,width-25,height-25);
  text("Score:",width-50,height-25);
  }  
}
        
        
        
