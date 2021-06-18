color GR = #7F897F;
color W = #FFFFFF;
color G = #2AD833;
color GD = #054309;
boolean darkMode;
int xDirection = 1;
int yDirection = 1;


final private void wefu() {

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
private void wefuwefu() {
  rect(300, 50, 200, 52);
}
