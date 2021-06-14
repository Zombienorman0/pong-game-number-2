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
    paddleSizeX1 = 30;
    paddleSizeY1 = 200;
    paddleSpeed = 5;
  }
  void draw() { 
    paddleDesign();
    ballPaddleBounce();
  }
  void ballPaddleBounce() {
    x = x + ( xSpeed * xDirection );
    //y = y + ( ySpeed * yDirection );//red side || blue side
    if ( x < PaddleX1 +diameterX  || x >  paddleX2 -diameterX/2) {//red side || blue side
      xDirection *= +- 1;
    }
    if ( y < PaddleX1 + paddleY && y > PaddleX1 || y < paddleX2 + paddleY && y > paddleX2  ) {//red side || blue side
      yDirection *= +- 1;
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
    rect(paddleX2, paddleY1, paddleSizeX1, paddleSizeY1);
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
    if ( paddleY1 >= 1080 - paddleSizeY1) {
      paddleY1 = 1080 - paddleSizeY1;
    }
  }
  void paddleBounce1() {
  }
  void paddleBounce2() {
  }
  void paddleBounce3() {
  }
  void paddleBounce4() {
  }
}
