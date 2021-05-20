


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
    background(0);
    darkModeButton();
  }

  void darkModeButton() {
    if (key == 'r' || key == 'R') {
      background(#FFFFFF);
    } else if (key == 't' || key == 'T') {
      background(0);
    }
  }
}
