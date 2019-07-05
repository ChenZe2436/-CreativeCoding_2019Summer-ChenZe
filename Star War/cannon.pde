class cannon
{
  int x;  
  cannon(int x)
  {
   this.x=x;
  }

  void display()
  {
    noStroke();

    fill(255, 0, 0);
    ellipse(mouseX-5, 560, 10, 20);
    ellipse(mouseX+45, 560, 10, 20);
    ellipse(mouseX+10, 550, 10, 10);
    ellipse(mouseX+30, 550, 10, 10);


    fill(255, 0, 0);
    ellipse(mouseX-5, 595, 10, 10);
    ellipse(mouseX+45, 595, 10, 10);


    fill(random(100), 0, 200);
    rect(mouseX, 570, 40, 20);
    rect(mouseX+5, 550, 30, 20);
    rect(mouseX+15, 545, 10, 5);
    rect(mouseX-10, 560, 10, 35);
    rect(mouseX+40, 560, 10, 35);
    ellipse(mouseX+20, 540, 20, 40);

    fill(255, 0, 0);
    rect(mouseX+10, 560, 20, 25);
    ellipse(mouseX+20, 560, 10, 10);

    fill(0, 150, 200);
    ellipse(mouseX+20, 535, 15, 20);
  }
  void fire(cannonball c)
  {
    c.fire(mouseX, 580);
  }
}
