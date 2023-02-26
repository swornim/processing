Drop[]drops =new Drop[1000];
Catcher catcher;
 int totaldrop = 0;
 void setup(){
   fullScreen();
   catcher = new Catcher(64);
 }
 void draw(){
   background(50);
   drops[totaldrop] = new Drop();
   totaldrop++;
   if(totaldrop >= drops.length){
     totaldrop = 0;
   }
   catcher.display();
   catcher.setlocation(mouseX,mouseY);
   for (int i = 0; i < totaldrop; i++){
     drops[i].rain();
     drops[i].move();
     if (catcher.intersect(drops[i])){
       drops[i].caught();
     }
       
   }
 }
   
 
