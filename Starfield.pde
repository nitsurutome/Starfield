class Particle
{
  int myColor, myWidth, myHeight;
  double mySpeed, myAngle, myX, myY;
  Particle() {
    myColor = color((int)(Math.random()*100)+150, (int)(Math.random()*100), (int)(Math.random()*100));
    mySpeed = (int)(Math.random()*10);
    myAngle = Math.random()*-Math.PI - Math.PI;
    myY = 400;
    myX = 250;
    myWidth = 10;
    myHeight = 10;
  } 
  void move() {
    myX = myX + mySpeed*(Math.cos(myAngle));
    myY = myY + mySpeed*(Math.sin(myAngle));
  }

  void show() {
    fill(myColor);
    ellipse((float)myX, (float)myY, myWidth, myHeight);
  }
} //end of Particle class

class Smoke extends Particle //inherits from Particle
{
  Smoke() {
    myColor = color((int)(Math.random()*5)+60, (int)(Math.random()*5)+60, (int)(Math.random()*5)+60, (int)(Math.random()*20)+190);
    mySpeed = (Math.random()*3.5);
    myAngle = Math.random()*-Math.PI - Math.PI;
    myY = 400;
    myX = 250;
    myWidth = 50;
    myHeight = 40;
  }
}
Particle [] par;

void setup()
{
  size(500, 500);
  noStroke();
  par = new Particle[100];
  for (int i = 0; i < par.length; i++)
    par[i] = new Particle();
  for (int i = 0; i < 20; i++)
    par[i] = new Smoke();
}


void draw()
{
  background(0);
  fill(255,255,0);
  ellipse(104, 237, 7, 7);
  ellipse(189, 469, 7, 7);
  ellipse(314, 308, 7, 7);
  ellipse(296, 479, 7, 7);
  ellipse(88, 52, 7, 7);
  ellipse(13, 89, 7, 7);
  ellipse(9, 213, 7, 7);
  ellipse(313, 3, 7, 7);
  ellipse(470, 195, 7, 7);
  ellipse(230, 150, 7, 7);
  ellipse(480, 460, 7, 7);
  ellipse(40, 450, 7, 7);
    for (int i = 0; i < par.length; i++) {
      par[i].move();
      par[i].show();
    }
    for (int i = 0; i < smo.length; i++) {
      smo[i].move();
      smo[i].show();
    }
    fill(160, 152, 152);
    rect(235, 310, 30, 100);
    fill(255,0,0);
    triangle(235,310,265,310,250,280);
    fill(0);
    ellipse(250, 340, 20, 20);
    fill(160, 152, 152);
    ellipse(250, 340, 18, 18);
    fill(0);
    ellipse(250, 340, 13, 13);
    fill(255,0,0);
    triangle(245,420,255,420,250,390);
    triangle(230,420,235,420,235,390);
    triangle(270,420,265,420,265,390);
  }
