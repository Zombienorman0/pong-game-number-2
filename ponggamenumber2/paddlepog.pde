class PaddlePog {
  float paddleY, paddleY1, PaddleX1, paddleX2, paddleSizeX, paddleSizeY, paddleSizeX1, paddleSizeY1, paddleSpeed;// paddle variables
  int xDirection = 1;
  float xSpeed = 2.8;
  float ySpeed = 2.8;
  PaddlePog (int displayWidth, int displayHeight) {

    paddleY = 450;
    paddleY1 = 451;
    PaddleX1 = 35;
    paddleX2 = 1855;
    paddleSizeX = 30;
    paddleSizeY = 200;
    paddleSpeed = 5;
  }
  void draw() { 
    paddleDesign();
    ballPaddleBounce();
  }
  void ballPaddleBounce() {
    ball.x = ball.x + ( xSpeed * xDirection );
    ball.xt = ball.xt - ( xSpeed * xDirection );
    //y = y + ( ySpeed * yDirection );//red side || blue side
    if ( ball.x < PaddleX1 +ball.diameterX  || ball.x >  paddleX2 - ball.diameterX/2  ) {//blue side WIP || red side WIP
      xDirection *= +- 1; //<>//
    }
    
    if ( ball.xt < PaddleX1 +ball.diameterXt  || ball.xt >  paddleX2 - ball.diameterXt/2  ) {//blue side WIP || red side WIP
      xDirection *= +- 1;
    }
  }
  void paddleDesign() {
    fill(#13589B);
    paddleB();
    noFill();
    fill(#AF1320);
    paddleR();
    noFill();
    noStroke();
    // ballPaddleBounce();
  } 
  void paddleB () {
    rect(PaddleX1, paddleY, paddleSizeX, paddleSizeY);
  }
  void paddleR () {
    rect(paddleX2, paddleY1, paddleSizeX, paddleSizeY);
  }
  void paddleMovementP1() {
    paddleY-= paddleSpeed;
    if ( paddleY <= 0) {
      paddleY = 0;
    }
  }
  void paddleMovementP2() {
    paddleY+= paddleSpeed;
    if ( paddleY >= 1080 - paddleSizeY) {
      paddleY = 1080 - paddleSizeY;
    }
  }
  void paddleMovementP3() {
    paddleY1-= paddleSpeed;
    if ( paddleY1 <= 0) {
      paddleY1 = 0;
    }
  }
  void paddleMovementP4() {
    paddleY1+= paddleSpeed;
    if ( paddleY1 >= 1080 - paddleSizeY) {
      paddleY1 = 1080 - paddleSizeY;
    }
  }
  float paddleBounce1() {
    return paddleY;
  }
  float paddleBounce2() {
    return PaddleX1;
  }
  float paddleBounce3() {
    return paddleX2;
  }
  float paddleBounce4() {
    return paddleSizeX;
  }
  float paddleBounce5() {
    return paddleSizeY;
  }
}
