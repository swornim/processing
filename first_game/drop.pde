class Drop{
  float x, y,r,speed;
  Drop(){
    x = random(width);
    y =-r*4;
    r = 8;
    speed = random(1,5);
  }
  void rain(){
    fill(0,0,255);
    for (int i = 2; i < r; i++ ) {
      ellipse(x, y + i*4, i*2, i*2);
  }
  }
  void move(){
    y+= speed;

  }
  void caught(){
    y = -1000;
    speed = 0;
  }
}
