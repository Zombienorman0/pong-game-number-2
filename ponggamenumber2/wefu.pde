color GR = #7F897F;
color W = #FFFFFF;
color G = #2AD833;
color GD = #054309;
boolean darkMode;
int paddleX2 = 1855;
int PaddleX1 = 35;
int paddleSizeX = 30;
int xDirection = 1;
int yDirection = 1;


void wefu() {

  fill(GD);
  wefuwefu();
  noFill();
  loop();
  if (key == 'r' || key == 'R') {
    fill(G);
    wefuwefu();
    noFill();
  } else if (key == 't' || key == 'T') {
    fill(GD);
    wefuwefu();
    noFill();
  }
}
void wefuwefu() {
  rect(300, 50, 200, 52);
}
