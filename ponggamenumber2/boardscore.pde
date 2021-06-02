class boardScore {


  boardScore(int displayWidth, int displayHeight) {
  }


  void draw() {
    fill(#13589B);
    actualScore();
    noFill();
    fill(#AF1320);
    actualScore2();
    retsrtgame();
    
  }


  void actualScore() {
    textSize(50);
    text('0', 850, 100);
  }
  void actualScore2() {
    textSize(50);
    text('0', 1075, 100);
  }

  void scoreScore() {
    //if () {
    //}
  }


  void retsrtgame() {
    if (key == 'l' || key == 'L') {
  ball = new BallPog(displayWidth, displayHeight);
  PogTable = new TablePog(displayWidth, displayHeight);
  paddle = new PaddlePog(displayWidth, displayHeight);
  scoreBoard = new boardScore(displayWidth, displayHeight);
    }
  }
}
