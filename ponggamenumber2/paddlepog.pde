public class PaddlePog extends Shape { //<>//
  private float  paddleSizeX, paddleSizeY, paddleSpeed;// paddle variables
  color colour;
  //change speed every game
  //private float xSpeed = 3.3;
  private float xSpeed1 = 3;
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
    ball.x = ball.x - ( xSpeed1 * ball.xDirection_getter() );
    if ( ball.x < xD +ball.diameterX && ball.y > yD && ball.y < yD+ paddleSizeY  ) {//blue side WIP || red side WIP
      ball.xDirection  *= +- 1;
    }
    ball.xt = ball.xt + ( xSpeed1 * ball.xDirection_getter() );
    if ( ball.xt < xD +ball.diameterXt && ball.yt > yD && ball.yt < yD+ paddleSizeY   ) {//blue side WIP || red side WIP, 
      ball.xDirection1 *= +- 1;
    }
  }
  public void ballPaddleBounce1() {
    ball.x = ball.x - ( xSpeed1 * ball.xDirection_getter() );
    if ( ball.x >  xD - ball.diameterX/2&& ball.y > yD && ball.y < yD+ paddleSizeY ) {//blue side WIP || red side WIP
      ball.xDirection  *= +- 1;
    }
    ball.xt = ball.xt + ( xSpeed1 * ball.xDirection_getter() );
    if ( ball.xt >  xD - ball.diameterXt/2&& ball.yt > yD && ball.yt < yD+ paddleSizeY ) {//blue side WIP || red side WIP
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
