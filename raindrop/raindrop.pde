bubble[] bubbles = new bubble[1000];

void setup(){
 
  size(640,500);
 
 
  for(int i= 0;i< bubbles.length;i++){
    bubbles[i] = new bubble(20);
  }
}
  void draw(){
    
    background(255);
    stroke(0);
 fill(255,0,255);
 ellipse(mouseX, mouseY,50,50);
 if(bubbles.overlap(bubble)){
      background(0,255,0);
    for(int i=0;i< bubbles.length;i++){
      
      
    bubbles[i].display();
    bubbles[i].decend();
    }
  }
 
  }
