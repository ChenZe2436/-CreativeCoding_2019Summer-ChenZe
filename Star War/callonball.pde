class cannonball
{
  int x;
  int y;
  int flag;
  cannonball()
  {
    x=600;
    y=600;
    flag=1;//can be fired
  }
  void fire(int x, int y)
  {
    this.x=x;
    this.y=y;
    flag=-1;//fired
  }
  void fly()
  {
    if (flag==-1) y-=5;
  }
  void display()
  {
    if (y<600)
    {
      fill(200, 0, 0);
      ellipse(x+20, y-40, 10, 20);
      rect(x+10, y-20, 5, 5);
      ellipse(x+15, y-20, 5, 5);
      rect(x+25, y-20, 5, 5);
      ellipse(x+25, y-20, 5, 5);

      fill(100);
      noStroke();
      rect(x+15, y-40, 10, 20);
    }
  }
}
