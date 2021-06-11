public class boardScore {


  boardScore(int displayWidth, int displayHeight) {
  }


  void draw() {
    fill(#13589B);
    //actualScore();
    noFill();
    fill(#AF1320);
    //actualScore2();
    noFill();
    retsrtgame();
  }


  void retsrtgame() {
    if (key == 'l' || key == 'L') {
      loop();
      ball = new BallPog(displayWidth, displayHeight);
      PogTable = new TablePog(displayWidth, displayHeight);
      paddle = new PaddlePog(displayWidth, displayHeight);
      scoreBoard = new boardScore(displayWidth, displayHeight);
      score[0] = 0;
      score[1] = 0;
    }
  }
}
