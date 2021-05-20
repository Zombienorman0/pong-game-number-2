

BallPog ball;
TablePog PogTable;
//global variables

void setup() {
  fullScreen(); //displayWidth, displayHeight
  noStroke();
 // geometryCheck();
  ball = new BallPog(displayWidth, displayHeight);
  PogTable = new TablePog(displayWidth, displayHeight);
  
}

void draw() {
  ball.draw();
  
  
}

// void keyPressed() {}

//void mousePressed() {}
