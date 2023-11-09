Die aDie; //<>//
int rows; //number of rows
int cols; //number of columns
int offset = 20; //distance between dice
int total = 0; //total 


void setup() {
  cols = width/200;
  rows = height/200-1;
  size(1000, 1000);
  aDie = new Die();
}


void draw() {
}

void mousePressed() {
  background(255,255,255);
   total = 0;
  for (int y = 0; y < rows; y++) {
    for (int x = 0; x < cols; x++) {
      aDie.current = aDie.roll();
      fill(255, 255, 255, 255);
      aDie.show(200*x, 200*y);
      total += aDie.current;
      
      if (aDie.current <= 1) {
        fill(0,0,0,255);
        ellipse(x*200+90, y*200+90, 30, 30);
      } else if (aDie.current <= 2) {
        fill(0,0,0,255);
        ellipse(x*200+60, y*200+120, 30, 30);
        ellipse(x*200+120, y*200+60, 30, 30);
      } else if (aDie.current <= 3) {
        fill(0,0,0,255);
        ellipse(x*200+60, y*200+120, 30, 30);
        ellipse(x*200+90, y*200+90, 30, 30);
        ellipse(x*200+120, y*200+60, 30, 30);
      } else if (aDie.current <= 4) {
        fill(0,0,0,255);
        ellipse(x*200+60, y*200+60, 30, 30);
        ellipse(x*200+120, y*200+120, 30, 30);
        ellipse(x*200+60, y*200+120, 30, 30);
        ellipse(x*200+120, y*200+60, 30, 30);
      } else if (aDie.current <= 5) {
        fill(0,0,0,255);
        ellipse(x*200+60, y*200+120, 30, 30);
        ellipse(x*200+90, y*200+90, 30, 30);
        ellipse(x*200+120, y*200+60, 30, 30);
        ellipse(x*200+60, y*200+60, 30, 30);
        ellipse(x*200+120, y*200+120, 30, 30);
      } else if (aDie.current <= 6) {
        fill(0,0,0,255);
        ellipse(x*200+60, y*200+130, 30, 30);
        ellipse(x*200+60, y*200+90, 30, 30);
        ellipse(x*200+60, y*200+50, 30, 30);
        ellipse(x*200+120, y*200+130, 30, 30);
        ellipse(x*200+120, y*200+90, 30, 30);
        ellipse(x*200+120, y*200+50, 30, 30);
      }
    }
    System.out.println();
  }
  System.out.print(total);
  textSize(100);
  text(total, width/2-50, height-50);
}
