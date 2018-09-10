void setup() {
  size(500,500);
  frameRate(60);
}
float a = 6.0, b = 1.0;
int xPos = 200;
float x = 200, y = 425;
int screen = 0;

void draw() {
  background(#B7D3E8);
  strokeWeight(4);
  stroke(0,0,0);
  line(0,450,500,450);
  dt(xPos,430);
  if (keyCode == UP) {
    ball();
  }
}

void keyPressed() {
  if (keyCode == LEFT) {
    xPos-=10;
    x-=10;
  }
  if (keyCode == RIGHT) {
    xPos+=10;
    x+=10;
  }
}

void ball() {
  fill(#FFF534);
  noStroke();
  ellipse(x,y,30,30);
  if (x<0 || x>500) {
    a = -a;
  }
  if (screen == 0) {
    y-=b;
    b++;
    if (y<20) {
      screen++;
    }
  }
  if (screen == 1) {
    if (y<=30 || y>=425) {
      b--;
      b = -b;
    } else {
      b++;
    }
    x+=a;
  }
  println(screen);
  println(b);
}

void dt(float x, float y) {
  rectMode(CENTER);
  noStroke();
  fill(255,0,0);
  rect(x,y,75,25);
  fill(150,150,150);
  ellipse(x-26,y+13,20,20);
  ellipse(x,y+13.5,20,20);
  ellipse(x+26,y+13,20,20);
}