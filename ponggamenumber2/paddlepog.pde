class PaddlePog {



  PaddlePog (int displayWidth, int displayHeight) {
  }
  void draw() {
    paddleMovement(); 
    paddleDesign();
  }


  void paddleDesign() {
    fill(#13589B);
    rect(35, 450, 30, 200);
    noFill();
    fill(#AF1320);
    rect(1855, 450, 30, 200);
    noFill();
    noStroke();
  }


  void paddleMovement() {
    if (key == UP) {
    } else if (key == DOWN) {
    }
  }
}
