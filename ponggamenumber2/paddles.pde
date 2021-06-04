/*class Leftpaddles {
  int paddleY, PaddleX1, paddleX2, paddleSizeX, paddleSizeY, paddleSizeX1, paddleSizeY1, paddleSpeed;

  //Leftpaddles( int displayWidth, int displayHeight) {
    paddleY = 450;
    PaddleX1 = 35;
    paddleX2 = 1855;
    paddleSizeX = 30;
    paddleSizeY = 200;
    paddleSizeX1 = 30;
    paddleSizeY1 = 200;
    paddleSpeed = 5;

  }

  void draw() {
    paddleB();
    paddleR();
  }
  void paddleB () {
    rect(PaddleX1, paddleY, paddleSizeX, paddleSizeY);
  }
  void paddleR () {
    rect(paddleX2, paddleY, paddleSizeX1, paddleSizeY1);
  }
//}
