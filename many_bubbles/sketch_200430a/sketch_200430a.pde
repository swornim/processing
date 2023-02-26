bubble[] Bubbles = new bubble[50000];
float total = 0;
void setup(){
  fullScreen();
  for(int i = 0 ; i <Bubbles.length ; i++){
  Bubbles[i]= new bubble(random(20,40));
  }
}
 void mousePressed(){
   total = total + 1;
   
}
void draw(){
  background(50);
  for(int i = 0 ; i < total ; i++){
  Bubbles[i].display();
  Bubbles[i].ascend();

}
}
