public class BallPog {//ball variables
  color ballColour = #A20BA2;
  float xSpeed = 2.8;
  float ySpeed = 2.8;
  int xDirection = 1;
  int yDirection = 1;
  color DG = #054309;
  color G = #2AD833;
  float x, y, diameterX;


  BallPog(int displayWidth, int displayHeight) {
    this.x = displayWidth/2;
    this.y = displayHeight/2;
    this.diameterX = displayHeight/20;
  } // end consturctor



  void draw() {
    scorescore();
    ballers();
    actualScore();
    actualScore2();
  }


  void ballers() {
    fill(ballColour);
    ellipse(x, y, diameterX, diameterX);
    stroke(0);
    noStroke();
    movement();
  }
  void movement() {
    y = y + ( ySpeed * yDirection );

    if (y > displayHeight - diameterX/2|| y < diameterX -20) {
      yDirection *= +-1;
    }
  } 
  public void scorescore () {
    if (x < diameterX -20) {
      ball = new BallPog(displayWidth, displayHeight); 
      score[1] += 1;
    }
    //switch between Multiplayer & Practice
    fill(#13589B);
    textSize(50);
    text("Practice", 300, 100);
    noFill();
    if (keys[4] == true) {
      wefu();
      fill(#AF1320);
      textSize(50);
      text("Multiplayer", 1400, 100);
      noFill();
      if (x > displayWidth - diameterX/2) {//x > displayWidth - diameterX/2
        ball = new BallPog(displayWidth, displayHeight);  
        score[0] += 1;
      }
    }
  }
}
