class boundry{
  float x;
  float y;
  float w;
  float h;
  Body body;
  boundry(float x_,float y_,float w_,float h_){
    x = x_;
    y = y_;
    w = w_;
    h = h_;
    
    BodyDef bd = new BodyDef();
    bd.type = BodyType.STATIC;
    bd.position.set(box2d.coordPixelsToWorld(x,y));
    
    body = box2d.createBody(bd);
    
    PolygonShape ps =  new PolygonShape();
    float box2dw = box2d.scalarPixelsToWorld(w/2);
    float box2dh = box2d.scalarPixelsToWorld(h/2);
    ps.setAsBox(box2dw,box2dh);
    
    body.createFixture(ps,5);
  }
   void display(){
    fill(127);
    rectMode(CENTER);
    rect(x,y,w,h);
   }
}
