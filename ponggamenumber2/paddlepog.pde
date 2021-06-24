public class PaddlePog extends Shape { //<>//
  private float  paddleSizeX, paddleSizeY, paddleSpeed;// paddle variables
  private color colour;
  //change speed every game
  //private float xSpeed = 3.3;
  private float xSpeed1 = 1;
  public  PaddlePog (float xD, float yD, color c) {
    super(xD, yD);
    this.colour = c;
    this.paddleSizeY = 200;
    this.paddleSizeX = 30;
    paddleSpeed = 5;
  }
  void draw() { 
    paddleDesign();
  }

  public void ballPaddleBounce() {
    ball.xD = ball.xD - ( xSpeed1 * ball.xDirection_getter() );
    if ( ball.xD < xD +ball.radius && ball.yD > yD && ball.yD < yD+ paddleSizeY  ) {//blue side WIP || red side WIP
      ball.xDirection  *= +- 1;
    } 
  }
  public void ballPaddleBounce1() {
    ball.xD = ball.xD - ( xSpeed1 * ball.xDirection_getter() );
    if ( ball.xD >  xD - ball.radius/2&& ball.yD > yD && ball.yD < yD+ paddleSizeY ) {//blue side WIP || red side WIP
      ball.xDirection  *= +- 1;
    }
  }

  private void paddleDesign() {
    fill(colour);
    paddleB();
    noFill();
    noStroke();
    // ballPaddleBounce();
  } 
  final private  void paddleB () {
    rect (xD, yD, paddleSizeX, paddleSizeY);
  }
  void paddleMovementP1() {
    yD-= paddleSpeed;
    if ( yD <= 0) {
      yD = 0;
    }
  }
  void paddleMovementP2() {
    yD+= paddleSpeed;
    if ( yD >= 1080 - paddleSizeY) {
      yD = 1080 - paddleSizeY;
    }
  }
}
