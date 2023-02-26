bubble[] Bubbles = new bubble[20];
void setup(){
  fullScreen();
  for(int i = 0 ; i <Bubbles.length ; i++){
  Bubbles[i]= new bubble(i * 4);
  }
 
}
void draw(){
  background(50);
  for(int i = 0 ; i < Bubbles.length ; i++){
  Bubbles[i].display();
  Bubbles[i].ascend();
  Bubbles[i].top();
}
}
