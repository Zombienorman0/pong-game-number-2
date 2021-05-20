

BallPog ball;
TablePog PogTable;
//global variables

void setup() {
  fullScreen(); //displayWidth, displayHeight
  noStroke();
  //PogTable.geometryCheck(displayWidth, displayHeight);
  ball = new BallPog(displayWidth, displayHeight);
  PogTable = new TablePog(displayWidth, displayHeight);
}

void draw() {
  PogTable.draw();
  ball.draw();
}

// void keyPressed() {}

//void mousePressed() {}
