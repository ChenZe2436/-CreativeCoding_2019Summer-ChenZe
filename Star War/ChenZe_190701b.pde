import processing.serial.*;
Serial myPort;
Back background;
int S;
boolean flagg=false;

cannon a=new cannon((int)random(20, 500));
cannonball[] c=new cannonball[50];
plane p=new plane(0, (int)random(20, 200));
void setup()
{
  size(700, 600);
  smooth();
  background = new Back(0, 0);
  myPort = new Serial(this, "COM3", 9600);
  
  for (int i=0; i<50; i++)
  {
    c[i]=new cannonball();
  }
}

void keyPressed()
{
  if (key=='r')
  {
    remain=20;
    credit=0;
    for (int i=0; i<20; i++)
      c[i]=new cannonball();
    p.flag=-1;
   
  }
 
  
  if(key =='l'){
  int i=0;
  for (i=0; i<20; i++)
  {
    if (c[i].flag==1) break;
  }
  if (i==20) return;
  a.fire(c[i]);
  remain--;}
}

int x=50,y=20;

void draw()
{
  noStroke();
  background(0);
  background.display();
  background.run();
  a.display();
  
  fill(255);
  textSize(50);
  
  text("Click to Play",100,100);

  if(flagg==true){
    fill(0);
    noStroke();
    text("Click to Play",100,100);
  }
  
  
  if(flagg==true){
  if(myPort.available()>0){
  S= myPort.read();
}
println(S);
int ll=20*S;
mouseX=ll;

}
  
  for (int i=0; i<20; i++)
  {
    if (c[i].flag==-1) 
    {
      c[i].fly();
      c[i].display();
    }
  }
  for (int i=0; i<20; i++)
  {
    p.crash(c[i]);
  }
  p.fly();
  p.display();
  if (hit==1)
  {
    hit=0;
    int j=5;
    for (int i=0; i<20; i++)
    {
      if (c[i].flag==-1) 
      {
        c[i]=new cannonball();
        j--;
        remain++;
        if (j==0) break;
      }
    }
  }
  fill(255);
  textSize(20);
  text("remain: "+remain, 500, 50);
  text("credit: "+credit, 500, 100);
  if (remain==0)
  {
    textSize(100);
    text("Game Over  ", 100, 180);
    textSize(50);
    text("Your score : "+credit, 120, 320);
    text("press 'R' to restart", 120, 420);
  }
  }
  
 
void mousePressed()
{
  flagg= true;
}
