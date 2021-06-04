class TablePog {
  color GR = #7F897F;
  color W = #FFFFFF;
  color G = #2AD833;
  color DG = #054309;
  color B = #13589B;
  color R = #AF1320;
  boolean darkMode;
  int RectWidth = 100;
  int Rectheight = 30;
  int RectPointX = 960;
  TablePog(int displayWidth, int displayHeight ) {
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
    background(DG);
    fill(GR);
    extraDesign();
    noFill();
    darkModeButton();
  }

  void darkModeButton() {
    if (key == 'r' || key == 'R') {
      background(G);
      //fill(#054309);
      // scoreArea();
      //noFill();
      fill(W);
      extraDesign();
      noFill();
      fill(B);
      scoreBoard.actualScore();
      noFill();
      fill(R);
      scoreBoard.actualScore2();
      noFill();
    } else if (key == 't' || key == 'T') {
      background(DG);
      //fill(#2AD833);
      //scoreArea();
      //noFill();
      fill(GR);
      extraDesign();
      noFill();
      fill(B);
      scoreBoard.actualScore();
      noFill();
      fill(R);
      scoreBoard.actualScore2();
      noFill();
    }
  }
  /*void scoreArea() {
   rect(1/20, 1/20, 30, 1100);
   rect(1890, 1/20, 30, 1100);
   }*/

  void extraDesign() {
    //around the scoreBoard();
    //fill(#FFFFFF);

    rect(775, 150, RectWidth, Rectheight);
    rect(750, 25, Rectheight, RectWidth);
    rect(1075, 150, RectWidth, Rectheight);
    rect(1175, 25, Rectheight, RectWidth);
    //lines down the middle
    //fill(#FFFFFF);
    rect(RectPointX, 25, Rectheight, RectWidth);
    rect(RectPointX, 200, Rectheight, RectWidth);
    rect(RectPointX, 350, Rectheight, RectWidth);
    rect(RectPointX, 500, Rectheight, RectWidth);
    rect(RectPointX, 650, Rectheight, RectWidth);
    rect(RectPointX, 800, Rectheight, RectWidth);
    rect(RectPointX, 950, Rectheight, RectWidth);
    //noFill();
  }
}
