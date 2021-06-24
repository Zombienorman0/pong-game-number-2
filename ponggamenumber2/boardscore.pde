private class boardScore {

  private boardScore(int displayWidth, int displayHeight) {
  }

  final private void draw() {
    fill(#13589B);
    //actualScore();
    noFill();
    fill(#AF1320);
    //actualScore2();
    noFill();
    retsrtgame();
  }

  final private void retsrtgame() {
    if (key == 'l' || key == 'L') {
      loop();
      ball = new BallPog(displayWidth/2, displayHeight/2, displayHeight/20, #A20BA2);
      extraBall = new BallPog(displayWidth/2, displayHeight/2, displayHeight/20, #D538D6);
      PogTable = new TablePog(displayWidth, displayHeight);
      scoreBoard = new boardScore(displayWidth, displayHeight);
      score[0] = 0;
      score[1] = 0;
    }
  }
}
