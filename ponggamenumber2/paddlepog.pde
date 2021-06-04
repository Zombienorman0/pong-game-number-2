public class PaddlePog {
  int paddleY,paddleY1, PaddleX1, paddleX2, paddleSizeX, paddleSizeY, paddleSizeX1, paddleSizeY1, paddleSpeed;


  PaddlePog (int displayWidth, int displayHeight) {
    /*x = displayWidth/2;
     y = displayHeight/2;
     diameterX = displayHeight/20;*/
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
  }


  void paddleDesign() {
    fill(#13589B);
    paddleB();
    noFill();
    fill(#AF1320);
    paddleR();
    noFill();
    noStroke();
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
}
