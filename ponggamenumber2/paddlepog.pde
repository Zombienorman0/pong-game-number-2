class PaddlePog {
  float x, y, diameterX, paddleY, PaddleX1, paddleX2, paddleSizeX, paddleSizeY;
  int xDirection = 1;
  int yDirection = 1;
  float xSpeed = 2.8;
  float ySpeed = 2.3;


  PaddlePog (int displayWidth, int displayHeight) {
    x = displayWidth/2;
    y = displayHeight/2;
    diameterX = displayHeight/20;
    paddleY = 450;
    PaddleX1 = 35;
    paddleX2 = 1855;
    paddleSizeX = 30;
    paddleSizeY = 200;
  }
  void draw() {
    //paddleMovement(); 
    paddleDesign();
  }


  void paddleDesign() {
    fill(#13589B);
    rect(PaddleX1, paddleY, paddleSizeX, paddleSizeY);
    noFill();
    fill(#AF1320);
    rect(paddleX2, paddleY, paddleSizeX, paddleSizeY);
    noFill();
    noStroke();
  }


  void paddleMovement() {
    //red paddle
    if (key == UP) {
    } else if (key == DOWN) {
    }
    //blue paddle
    if (key == 'w' || key == 'W') {
    } else if (key == 's' || key == 'S') {
    }
  }
}
