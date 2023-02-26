Snake snake;
Random random;

void setup(){
  fullScreen();
  
  random = new Random();
    snake = new Snake();
}
void draw(){
   
  background(50);
random.display();
snake.display();
snake.move();

//if( snake.intersect(rcircle)){
  //background(155);
//}
}
