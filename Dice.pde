 Die bob = new Die(100,1000);
 int number = 1;
 void setup()
  {
    size(750,750);  
    noLoop();
  }
  void draw()
  {
    //your code here
    for(int x = 50; x < 500; x = x + 60){
    Die bob = new Die(x,1000);
    bob.show();
    bob.roll();
    }
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
    int mySize,myX,myY;
      Die(int x, int y) //constructor
      {
        //variable initializations here
        mySize = 100;
        myX = x;
        myY = y;         
      }
      void roll()
      {

      }
      void show()
      {
        number = ((int)(Math.random()*6)+1);
        noStroke();
        fill(50);
        rect(myX, myY, 100, 100,7);
        if(number == 6){
          ellipse(20,20,20,20);
          ellipse(30,20,20,20);
          ellipse(40,20,20,20);
          ellipse(50,20,20,20);
          ellipse(60,20,20,20);
          ellipse(70,20,20,20);
        }else if(number == 5){
          ellipse(20,20,20,20);
          ellipse(20,20,20,20);
          ellipse(20,20,20,20);
          ellipse(20,20,20,20);
          ellipse(20,20,20,20);
        }else if (number == 4){
          ellipse(20,20,20,20);
          ellipse(20,20,20,20);
          ellipse(20,20,20,20);
        }else if (number == 3){
          ellipse(20,20,20,20);
          ellipse(20,20,20,20);
          ellipse(20,20,20,20);
        }else if (number == 2){
          ellipse(20,20,20,20);
          ellipse(30,30,30,30);
        }else{
          ellipse(20,20,20,20);
        }
      }
  }
