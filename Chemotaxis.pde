 //declare bacteria variables here  
 Bacteria[] colony;
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
   for(int i = 0; i < colony.length; i++){
      colony[i].show();
      colony[i].move();
   }
 
    

   
 }
 void mousePressed()
{
  redraw();
}
 class Bacteria    
 {     
   int myX, myY, myRed, myGreen, myBlue;
   Bacteria()
   {
      myX = (int)(Math.random()*800);
      myY = (int)(Math.random()*800);
      myGreen = (int)(Math.random()*55) + 100;
      myRed = (int)(Math.random()*70);
      myBlue = (int)(Math.random()*70);
   }
   void move()
   {
     myX = myX + (int)(Math.random()*7)-3;
     myY = myY + (int)(Math.random()*7)-3;  
   }
   void show()
   {
      fill(myRed, myGreen, myBlue);
      rect(myX, myY, 50, 20, 10);
   }
  
 }    