
class Back {
  PImage[]background;
  int x;                //背景1，x坐标 
  int y;                //背景1，y坐标 
  int count; 
  int y1;               //背景2，y1坐标 
  int y2;               //背景2，y2坐标 
  Back(int x, int y) { 
    background = new PImage[2]; 
    this.y1=y; 
    this.y2=y+300; 
    this.x=x; 
    for (int i = 0; i< 2; i++) { 
      String a = "back"+".jpg"; 
      background[i] = loadImage(a);
    }
  } 
  void run() { 
    y1++; 
    y2++;
  } 
  void display() { 
    if (y1 == 300) { 
      y1 =-300;
    } 
    if (y2 == 300) { 
      y2=-300;
    } 
    image(background[0], x, y1); 
    image(background[1], x, y2);
  }
}
