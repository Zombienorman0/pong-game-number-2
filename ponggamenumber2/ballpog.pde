private class BallPog {
  float x, y, diameterX, diameterY;//ball variables
  color ballColour, defaultColour = 0;
  float xSpeed = 2.8;
  float ySpeed = 2.8;
  int xDirection = 1;
  int yDirection = 1;
  color DG = #054309;
  int [] score = {0, 0};

  BallPog(int displayWidth, int displayHeight) {

    x = displayWidth/2;
    y = displayHeight/2;
    diameterX = displayHeight/20;
    diameterY = diameterX;
    ballColour = color(#CB16D8);
  } // end consturctor



  void draw() {
    scorescore();
    actualScore();
    actualScore2();
    movement();
    ballers();
  }

  void movement() {

    x = x + ( xSpeed * xDirection );
    y = y + ( ySpeed * yDirection );

    if (x > displayWidth - diameterX/2 || x < diameterX -20) {//red side || blue side
      xDirection *= +-1;
    }
    if (y > displayHeight - diameterY/2|| y < diameterY -20) {
      yDirection *= +-1;
    }
  }


  void actualScore() {
    fill(#13589B);
    textSize(50);
    text(score[0], 850, 100);
    noFill();
  }
  void actualScore2() {
    fill(#AF1320);
    textSize(50);
    text(score[1], 1075, 100);
    noFill();
  }

  void scorescore () {
    if (x < diameterX -20) {
      ball = new BallPog(displayWidth, displayHeight); 
      score[1] += 1;
    }
    //switch between Multiplayer & Practice
    fill(#13589B);
    textSize(50);
    text("Practice", 300, 100);
    noFill();
    if (key == 'm'|| key == 'M') {//key == 'n' || key == 'N'
      fill(DG);
      rect(300, 50, 310, 60);
      noFill();
      fill(#AF1320);
      textSize(50);
      text("Multiplayer", 1400, 100);
      noFill();
      if (x > displayWidth - diameterX/2) {//x > displayWidth - diameterX/2
        ball = new BallPog(displayWidth, displayHeight);  
        score[0] += 1;
      }
    } else if (key == 'n' || key == 'N') {
      if (x > displayWidth - diameterX/2) {
        fill(DG);
        rect(1400, 50, 310, 60);
        noFill();
        fill(#13589B);
        textSize(50);
        text("Practice", 300, 100);
        noFill();
      }
    }
  }

  void ballers() {
    fill(ballColour);
    ellipse(x, y, diameterX, diameterY);
    fill(defaultColour);
  }
}  
