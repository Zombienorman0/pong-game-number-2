public BallPog ball;
public TablePog PogTable;
public PaddlePog paddle;
private boardScore scoreBoard;
//global variables
static boolean [] keys = new boolean[8];

public void setup() {
  fullScreen(); 
  noStroke();
  //PogTable.geometryCheck(displayWidth, displayHeight);
  PogTable = new TablePog( displayWidth, displayHeight);
  ball = new BallPog(displayWidth, displayHeight);
  paddle = new PaddlePog(displayWidth, displayHeight);
  scoreBoard = new boardScore(displayWidth, displayHeight);
}

public void draw() {
  PogTable.draw();//always has to be first
  ball.draw();
  scoreBoard.draw();
  paddle.draw();
  paddleMoveB();
  paddleMoveR();
}
