public BallPog ball;
public BallPog extraBall;
public TablePog PogTable;
public PaddlePog leftPaddle;
public PaddlePog rightPaddle;
private boardScore scoreBoard;
//global variables
static boolean [] keys = new boolean[8];

public void setup() {
  fullScreen(); 
  noStroke();
  //PogTable.geometryCheck(displayWidth, displayHeight);
  PogTable = new TablePog( displayWidth, displayHeight);
  ball = new BallPog(displayWidth/2, displayHeight/2, displayHeight/20, #A20BA2);
  extraBall = new BallPog(displayWidth/2, displayHeight/2, displayHeight/20, #D538D6);
  leftPaddle = new PaddlePog (35, displayHeight/2 -200/2, #13589B);
  rightPaddle = new PaddlePog (1855, displayHeight/2 -200/2, #AF1320);
  scoreBoard = new boardScore(displayWidth, displayHeight);

  shapes.add(leftPaddle);
  shapes.add(rightPaddle);
}

void draw() {
  PogTable.draw();//always has to be first
  ball.draw();
  scoreBoard.draw();

  paddleMoveB();
  paddleMoveR();

  leftPaddle.ballPaddleBounce();
  rightPaddle.ballPaddleBounce1();
  

  for (int i=0; i<shapes.size(); i++) {
    shapes.get(i).draw();
  }
}
