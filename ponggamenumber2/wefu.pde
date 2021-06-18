final private void wefu() {

  fill(ball.DG_getter());
  wefuwefu();
  noFill();
  loop();
  if (key == 'r' || key == 'R') {
    fill(ball.G_getter());
    wefuwefu();
    noFill();
  } else if (key == 't' || key == 'T') {
    fill(ball.DG_getter());
    wefuwefu();
    noFill();
  }
}
private void wefuwefu() {
  rect(300, 50, 200, 52);
}
