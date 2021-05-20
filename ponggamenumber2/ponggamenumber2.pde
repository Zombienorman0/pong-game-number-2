

BallPog ball;
TablePog PogTable;
PaddlePog paddle;
boardScore scoreBoard;
//global variables

void setup() {
  fullScreen(); //displayWidth, displayHeight
  noStroke();
  //PogTable.geometryCheck(displayWidth, displayHeight);
  ball = new BallPog(displayWidth, displayHeight);
  PogTable = new TablePog(displayWidth, displayHeight);
  paddle = new PaddlePog(displayWidth, displayHeight);
}

void draw() {
  PogTable.draw();
  ball.draw();
  paddle.draw();
  scoreBoard.draw();
}

// void keyPressed() {}

//void mousePressed() {}
