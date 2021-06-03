class TablePog {


  boolean darkMode;
  TablePog(int displayWidth, int displayHeight) {
  }
  void geometryCheck(int displayWidth, int displayHeight) {
    if (displayWidth >= displayHeight) {
      fill(#CB16D8);
      textSize(32);
      text("this good screen for pong", 575, 40);
    } else {
      textSize(32);
      text("this no good screen for pong", 10, 30); 
      exit();
    }
  }

  void draw() {
    //
    background(#2AD833);
    extraDesign();
    darkModeButton();
  }

  void darkModeButton() {
    if (key == 'r' || key == 'R') {
      background(#2AD833);
      //fill(#054309);
      // scoreArea();
      //noFill();
      fill(#FFFFFF);
      extraDesign();
      noFill();
      fill(#13589B);
      scoreBoard.actualScore();
      noFill();
      fill(#AF1320);
      scoreBoard.actualScore2();
    } else if (key == 't' || key == 'T') {
      background(#054309);
      //fill(#2AD833);
      //scoreArea();
      //noFill();
      fill(#7F897F);
      extraDesign();
      noFill();
      fill(#13589B);
      scoreBoard.actualScore();
      noFill();
      fill(#AF1320);
      scoreBoard.actualScore2();
    }
  }
  /*void scoreArea() {
   rect(1/20, 1/20, 30, 1100);
   rect(1890, 1/20, 30, 1100);
   }*/

  void extraDesign() {
    //around the scoreBoard();
    //fill(#FFFFFF);
    rect(775, 150, 100, 30);
    rect(750, 25, 30, 100);
    rect(1075, 150, 100, 30);
    rect(1175, 25, 30, 100);
    //lines down the middle
    //fill(#FFFFFF);
    rect(960, 25, 30, 100);
    rect(960, 200, 30, 100);
    rect(960, 350, 30, 100);
    rect(960, 500, 30, 100);
    rect(960, 650, 30, 100);
    rect(960, 800, 30, 100);
    rect(960, 950, 30, 100);
  }
}
