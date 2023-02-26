import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

Box2DProcessing box2d;

ArrayList <boxes> b = new ArrayList<boxes>();
void setup(){
 size(640,400); 
 box2d = new Box2DProcessing(this);
 box2d.createWorld();//ek choti matra call garnu parcha
}
void draw(){
 background(50);
 box2d.step();
 if(mousePressed){
  b.add(new boxes(mouseX,mouseY,24,24));
 }
 for(boxes bo : b){
  bo.display(); 
 }
 
}
