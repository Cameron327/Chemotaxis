Bacteria [] colony;
void setup()   
{     
  size(500,500);
  background(0);
  //frameRate(10);
  colony = new Bacteria[500];
  for(int i = 0; i < colony.length; i = i + 1)
  {
    colony[i] = new Bacteria();
  }
}   
void draw()   
{    
  background(0);
  for (int i = 0; i < colony.length; i++)
  {
    colony[i].move();
    colony[i].show();
  }
}  
class Bacteria
{     
  int myX, myY, myColor;
  Bacteria()
  {
    myX = 250;
    myY = 250;
    myColor = color(255,0,0);
  }
  void move()
  {
      myX = myX + (int)(Math.random()*2);
      myX = myX - (int)(Math.random()*2);
      myY = myY + (int)(Math.random()*2);
      myY = myY - (int)(Math.random()*2);
  }
  void show()
  {
    fill(myColor);
    ellipse(myX,myY,25,25);
  }
}
