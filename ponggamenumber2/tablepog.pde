public class TablePog {
  public color DR = #7F897F;
  public color W = #FFFFFF;
  public color G = #2AD833;
  public color DG = #054309;
  public boolean darkMode;
  private int RectWidth = 100;
  private int Rectheight = 30;
  private int RectPointX = 960;
  TablePog(int displayWidth, int displayHeight ) {
  }
  /*void geometryCheck(int displayWidth, int displayHeight) {
   if (displayWidth >= displayHeight) {
   fill(#CB16D8);
   textSize(32);
   text("this good screen for pong", 575, 40);
   } else {
   textSize(32);
   text("this no good screen for pong", 10, 30); 
   exit();
   }
   }*/

  private void draw() {
    background(DG);
    fill(GR);
    extraDesign();
    noFill();
    noLoop();
    darkModeButton();
  }

  private void darkModeButton() {
    loop();
    if (key == 'r' || key == 'R') {
      background(G);
      fill(G);
      wefu();
      noFill();
      fill(W);
      extraDesign();
      noFill();
    } else if (key == 't' || key == 'T') {
      background(DG);
      fill(DG);
      wefu();
      noFill();
      fill(GR);
      extraDesign();
      noFill();
    }
  }

  private void extraDesign() {
    //around the scoreBoard();
    rect(775, 150, RectWidth, Rectheight);
    rect(750, 25, Rectheight, RectWidth);
    rect(1075, 150, RectWidth, Rectheight);
    rect(1175, 25, Rectheight, RectWidth);

    //lines down the middle
    rect(RectPointX, 25, Rectheight, RectWidth);
    rect(RectPointX, 200, Rectheight, RectWidth);
    rect(RectPointX, 350, Rectheight, RectWidth);
    rect(RectPointX, 500, Rectheight, RectWidth);
    rect(RectPointX, 650, Rectheight, RectWidth);
    rect(RectPointX, 800, Rectheight, RectWidth);
    rect(RectPointX, 950, Rectheight, RectWidth);
  }
}
