BallPog ball;
TablePog PogTable;
PaddlePog paddle;
boardScore scoreBoard;
//Leftpaddles Paddles;
//global variables
static boolean [] keys = new boolean[4];

void setup() {
  fullScreen(); //displayWidth, displayHeight
  noStroke();
  //PogTable.geometryCheck(displayWidth, displayHeight);
  ball = new BallPog(displayWidth, displayHeight);
  PogTable = new TablePog( displayWidth, displayHeight);
  paddle = new PaddlePog(displayWidth, displayHeight);
  scoreBoard = new boardScore(displayWidth, displayHeight);
  //Paddles = new Leftpaddles(displayWidth, displayHeight);
}

void draw() {
  PogTable.draw();
  ball.draw();
  paddle.draw();
  scoreBoard.draw();
  paddleMoveB();
  paddleMoveR();
  //scoreBoard.retsrtgame();
}

// void keyPressed() {}

//void mousePressed() {}
