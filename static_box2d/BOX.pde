class boxes{
  float w_;
  float h_;
  Body body;
   boxes(float x, float y) {
    w_ = random(4,16);
    h_ = random(4,16);
  
  BodyDef bd = new BodyDef();
    bd.type = BodyType.DYNAMIC;
    bd.position.set(box2d.coordPixelsToWorld(x,y));

    body = box2d.createBody(bd);


    PolygonShape ps = new PolygonShape();
    float box2dw = box2d.scalarPixelsToWorld(w_/2);
    float box2dh = box2d.scalarPixelsToWorld(h_/2);
    ps.setAsBox(box2dw,box2dh);
    
    
    FixtureDef fd = new FixtureDef();
    fd.shape = ps;
    
    fd.friction = 1;
    fd.density = 0.3;
    fd.restitution = 0.4;
    
    body.createFixture(fd);
    
     body.setLinearVelocity(new Vec2(random(-5, 5), random(2, 5)));
    body.setAngularVelocity(random(-5, 5));
  }
  void display(){
    float a = body.getAngle();
    Vec2 pos = box2d.getBodyPixelCoord(body);   
    pushMatrix();
    translate(pos.x,pos.y);
    rotate(-a);
    fill(255);
    stroke(0);
    rectMode(CENTER);
    rect(0,0,w_,h_);
    
    popMatrix();
  }
  void killBody(){
    box2d.destroyBody(body);
  }
  Boolean done(){
   Vec2 pos = box2d.getBodyPixelCoord(body);
   if(pos.y > height + w_*h_){
    killBody();
    return true;
   }
   return false;
  }
}
