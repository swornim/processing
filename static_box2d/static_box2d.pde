import shiffman.box2d.*;
import org.jbox2d.common.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.dynamics.*;

Box2DProcessing box2d;

ArrayList<boxes> B = new ArrayList<boxes>();

ArrayList<boundry> b = new ArrayList<boundry>(); 
void setup() {
  size(640, 400);
  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  box2d.setGravity(0, -10);

  b.add(new boundry(width/4,height-5,width/2-50,10));
  b.add(new boundry(3*width/4,height-50,width/2-50,10));
}
void draw() {
  background(50);
  box2d.step();
  if (random(1) < 0.2) {
   
    B.add(new boxes(width/2,30));
  }
  for ( boxes bo : B){
    bo.display();
  }
  
  for(boundry Bo:b){
   Bo.display(); 
  }
 for(int i = B.size() - 1;i > 0;i--){
   boxes box = B.get(i);
   if(box.done()){
    B.remove(i); 
   }
 }
}
