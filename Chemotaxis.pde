 //declare bacteria variables here  
 Bacteria[] colony;
 Food yum;
 void setup()   
 { 
   frameRate(125);
   //initialize bacteria variables here
   size(800, 800);
   colony = new Bacteria[50]; 
   
   for(int i = 0; i < colony.length; i++){
      colony[i] = new Bacteria(); 
   }
   
   

 }   
 void draw()   
 {    
   //move and show the bacteria
   background(255,255, 153);
   for(int y = 40; y < 800; y+= 100){
      for(int x = 40; x < 800; x+= 100){
         yum = new Food(x, y);
         if(get(x, y) == color(0, 255, 255) || get(x, y) == color(255,255, 153)){
            yum.show();
        } else {
            yum.dead(); 
        }
        
      }
   }
   for(int i = 0; i < colony.length; i++){
      colony[i].show();
      colony[i].move();
      if(get(colony[i].myX, colony[i].myY) == color(0, 255, 255)){
        colony[i].grow();
      }
   }
   
    

   
 }
 void mousePressed()
{
  redraw();
}
 class Bacteria    
 {     
   int myX, myY, myRed, myGreen, myBlue, size;
   Bacteria()
   {
      myX = (int)(Math.random()*800);
      myY = (int)(Math.random()*800);
      myGreen = (int)(Math.random()*255);
      myRed = (int)(Math.random()*255);
      myBlue = (int)(Math.random()*255);
      size = 40;
   }
   void move()
   {
     myX = myX + (int)(Math.random()*7)-3;
     myY = myY + (int)(Math.random()*7)-3;  
   }
   void grow()
   {
       size+= 5; 
     
   }
   void show()
   {
      fill(myRed, myGreen, myBlue);
      rect(myX, myY, size, size/2, 10);
   }
  
 }
 
 class Food
 {
   int myX, myY, size;
   boolean alive;
   Food(int x, int y){
      myX = x;
      myY = y;
      size = 10;
      alive = true;
   }
   void eaten()
   {
     alive = false;
     
   }
   void show()
   {
       fill(0, 255, 255);
       ellipse(myX, myY, size, size);
     
   }
   void dead()
   {
     fill(255,255, 153);
     ellipse(myX, myY, size, size);
   }
   
   
   
 }