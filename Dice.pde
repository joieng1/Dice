Die bob;
void setup()
{
  size(700,800);  
  noLoop();
}
  
void draw()
{
  background(200);
  int nums = 0;
  
  for(int x = 0; x < 300; x = x + 100){
    for(int y = 0; y < 200; y = y + 100){
    bob = new Die(x,y);
    bob.roll();
    bob.show();
    nums = nums + bob.number;
    }
   }
   fill(0);
    textSize(30);
    text(" Total: " + nums, 200, 750);
    println(nums);
}

void mousePressed()
{
    redraw();
}

class Die //models one single dice cube
{
  int number,myX,myY;
    Die(int x, int y) //constructor
    {
      //variable initializations here
      myX = x;
      myY = y; 
    }
    void roll()
    {
      number = (int)(Math.random()*6+1);
    }
    void show()
    {
      noStroke();
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      rect(myX, myY, 100, 100,7);
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      if(number == 1){
         ellipse(myX+50,myY+50,20,20);
      }else if(number == 2){
        ellipse(myX+20,myY+20,20,20);
        ellipse(myX+80,myY+80,20,20);
      }else if (number == 3){
        ellipse(myX+20,myY+20,20,20);
        ellipse(myX+50,myY+50,20,20);
        ellipse(myX+80,myY+80,20,20);
      }else if (number == 4){
        ellipse(myX+20,myY+20,20,20);
        ellipse(myX+80,myY+20,20,20);
        ellipse(myX+20,myY+80,20,20);
        ellipse(myX+80,myY+80,20,20);
      }else if (number == 5){
        ellipse(myX+20,myY+20,20,20);
        ellipse(myX+80,myY+20,20,20);
        ellipse(myX+20,myY+80,20,20);
        ellipse(myX+80,myY+80,20,20);
        ellipse(myX+50,myY+50,20,20);
      }else{
        ellipse(myX+25,myY+20,20,20);
        ellipse(myX+25,myY+50,20,20);
        ellipse(myX+25,myY+80,20,20);
        ellipse(myX+75,myY+20,20,20);
        ellipse(myX+75,myY+50,20,20);
        ellipse(myX+75,myY+80,20,20);        
      }
    }
}
