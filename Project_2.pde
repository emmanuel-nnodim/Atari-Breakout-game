int x, y; //location of the ball
float dx, dy; //velocity of ball
boolean[][]brick = new boolean[8][4];
boolean brickBroken= false;
PImage bg;
// Ping Pong Game


void setup() { 
  //fullScreen();
  size(600, 600);
  x = 320;
  y = 400;
  int bx, by;
    bx = 8;
    by = 4;
    println("Press the left mouse "  
      + " to Start the game " + bx + "," + by);
}
void resetBall() {
  //  x = width/200;
  x = 400;
  y = 400;
  //y = height/2;
  dx = random (-1, 5);
  dy = random (-1, 5);
} 

void draw() {

  background(#FCC50D);
  size(600, 600);
  // if (x>600)

  if (y>600)
    resetBall();

  for (int x = 0; x < 8; x++) {
    for (int y = 0; y < 4; y++) {

      if (brick[x][y]==false) {
        fill(7);

        rect(x*80, y*40, 80, 40);//bricks
      }
    }
  }
  int i, j;

  if (y  <= 170)

  {
    j = y/40;
    i = x/80;

    if ( i < 8 && j < 4 && brick[i][j] == false)
    {
      brick[i][j] = true;
      dy = -dy;
    }
  }

  if (x>width)
    dx=-1;
  if (x<0)
    dx=1;
  //if(y>width)
  if (y>height)
    dy=1;
  if (y<0)
    dy=1;
  x+= dx;
  y+=dy;

  fill(21);
  stroke(#09f9eb);

  rect(mouseX, 575, 161, 24); //paddle
  if (y>46 ||height <82)
    if (x>0|| width <-1);
 
  fill(#fc0320);
  ellipse(x, y, 22, 22);
  x = int(x + dx);
  y = int(y + dy);
 // if (y>=574 &&x >=mouseX && x <= mouseX +162 && y>=24);
  if (x>mouseX && x<mouseX+162 && y>574 && mouseY>24) {

    dy = -dy;

    
  }
}


void resetGame() {
  println("resetGame");

  if (x>1)
    resetBall();
}

void mousePressed() {
  if (mouseButton == LEFT) {
    resetBall();
  }
}
