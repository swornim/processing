 maker m;

void setup(){
 size(640,400);
 m = new maker();
}

void draw(){
  background(50);
  m.display();
  m.move();  
  m.loc();
}
