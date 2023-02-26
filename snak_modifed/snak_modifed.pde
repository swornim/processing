Snake s;
void setup(){
size(640,500);
s = new Snake();
background(50);
s.pick_food();
frameRate(10);
}
void draw(){
background(50);
  s.display();
  s.keyPressed();
  s.food();
  s.eatfood();
    s.movebody();
    s.death();
    s.printscore();
}
