int startX = 200;
int startY = 160;
int endX = 300;
int endY = 0;

void setup()
{
  size(300,300);
  background(23,139,228);
  strokeWeight(3);
  PImage img;
  img = loadImage("elephant.png");
  image(img,200,150);
}

void draw()
{
  
  
  int increaseY = 0;
  int increaseX = 0;
  int red = (int)(Math.random() * 256);
  int green = (int)(Math.random() * 256);
  int blue = (int)(Math.random() * 256);
  while (endX > 10)
  {
    increaseY = (int)((Math.random() * 50) - 20);
    increaseX = (int)(Math.random() * 10);
    endX = startX - increaseX;
    endY = startY - increaseY;
   stroke(red,green,blue);
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
  }
}
void mousePressed()
{
 startX = 200;
 startY = 160;
 endX = 300;
 endY = 0;
}
