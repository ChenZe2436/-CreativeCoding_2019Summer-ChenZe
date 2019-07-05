int remain=20;
int credit=0;
int hit=0;
PFont font;
class plane
{
  int x;
  int y;
  int flag;
  int speed;
  plane(int x, int y)
  {
    this.x=x;
    this.y=y;
    speed=3;
    flag=-1;
  }
  void fly()
  {
    if (flag==-1)
    {
      x+=speed;
      if (x>=800) 
      {
        x-=800;
        y=(int)random(20, 300);
      }
    }
    if (flag==1)
    {
      flag=-1;
      x=0;
      speed++;
    }
  }
  void crash(cannonball c)
  {
    if (dist(x, y, c.x, c.y)<30) 
    {
      credit+=100;
      flag=1;
      hit=1;
    }
  }
  void display()
  {
    if (x<800)
    {
      fill(0,200,random(100));
      rect(x, y, 50, 20);
      ellipse(x+25, y, 30, 30);
      ellipse(x, y+10, 20, 20);
      ellipse(x+50, y+10, 20, 20);

      fill(0,random(100,250),200);
      ellipse(x+25, y-5, 20, 10);
      ellipse(x+5, y+10, 5, 5);
      ellipse(x+45, y+10, 5, 5);
      ellipse(x+25, y+10, 15, 10);
      ellipse(x, y+20, 5, 5);
      ellipse(x+50, y+20, 5, 5);
    }
  }
}
