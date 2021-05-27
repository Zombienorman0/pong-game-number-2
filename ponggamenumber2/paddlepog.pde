

class PaddlePog {



  PaddlePog (int displayWidth, int displayHeight) {
  }
  void draw() {
    paddleMovement(); 
    paddleDesign();
  }


  void paddleDesign() {
    stroke(0);
    fill(#A032B2);
    rect(35, 450, 30, 200);
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
