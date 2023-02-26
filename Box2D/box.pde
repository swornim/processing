class boxes {
  Body body;
 float x;
 float y;
 float w;
 float h;
boxes(float x_,float y_,float w_,float h_){
  x = x_;
  y = y_;
  w = w_;
  h = h_;
  
 // steep 1:defining body
   BodyDef bd = new BodyDef();
   bd.type = BodyType.DYNAMIC;
   bd.position.set(box2d.coordPixelsToWorld(x,y)) ;
   
 //step 2: create body
   body = box2d.createBody(bd);
 
 //step 3 : create shape
   PolygonShape ps = new PolygonShape();
   float box2Dw = box2d.scalarPixelsToWorld(w);
   float box2Dh = box2d.scalarPixelsToWorld(h);
   ps.setAsBox(box2Dw/2,box2Dh/2); // in box2d, coordinates start from centre
   
 //step 4:
   FixtureDef fd = new FixtureDef();
   fd.shape = ps; // fixture is like glue to shape and body
  //parameters affecting physis
   fd.density = 1;
   fd.friction = 0.3;
   fd.restitution = 0.5;
   
 //step 5: attach shape to body with fixture
 body.createFixture(fd);
   
}
void display(){
  float a = body.getAngle();
  Vec2 vpos = box2d.getBodyPixelCoord(body);
  pushMatrix();
 
  translate(vpos.x,vpos.y);
   rotate(-a);
  fill(255);
  rectMode(CENTER);
  rect(0,0,w,h);
  popMatrix();
}
}
