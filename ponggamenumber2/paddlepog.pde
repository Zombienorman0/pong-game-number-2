class PaddlePog { //<>//
  float paddleY, paddleY1, PaddleX1, paddleX2, paddleSizeX, paddleSizeY, paddleSizeX1, paddleSizeY1, paddleSpeed;// paddle variables
  int xDirection = 1;
  int xDirection1 = -1;
  //change speed every game
  float xSpeed = 3.3;
  float xSpeed1 = 3;
  PaddlePog (int displayWidth, int displayHeight) {
    paddleSizeY = 200;
    this.paddleY = displayHeight/2 -paddleSizeY/2;
    this.paddleY1 = paddleY;
    this.PaddleX1 = 35;
    this.paddleX2 = 1855;
    paddleSizeX = 30;
    paddleSpeed = 5;
  }
  void draw() { 
    paddleDesign();
    ballPaddleBounce();
  }
  
  void ballPaddleBounce() {
    ball.x = ball.x + ( xSpeed1 * xDirection );
    if ( ball.x < PaddleX1 +ball.diameterX && ball.y > paddleY && ball.y < paddleY+ paddleSizeY || ball.x >  paddleX2 - ball.diameterX/2&& ball.y > paddleY1 && ball.y < paddleY1+ paddleSizeY ) {//blue side WIP || red side WIP
      xDirection *= +- 1;
    }    ball.xt = ball.xt + ( xSpeed * xDirection );
    if ( ball.xt < PaddleX1 +ball.diameterXt && ball.yt > paddleY && ball.yt < paddleY+ paddleSizeY || ball.xt >  paddleX2 - ball.diameterXt/2&& ball.yt > paddleY1 && ball.yt < paddleY1+ paddleSizeY ) {//blue side WIP || red side WIP
      xDirection1 *= +- 1;
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
}
