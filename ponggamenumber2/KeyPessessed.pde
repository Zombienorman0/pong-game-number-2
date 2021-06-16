//ball variables
color  defaultColour = 0;
color DG = #054309;

void keyPressed () {
  if (key == 'w' || key =='W') {
    keys[0] = true;
  }
  if (key == 's' || key =='S') {
    keys[1] = true;
  }
  if (keyCode == UP) {
    keys[2] = true;
  }
  if (keyCode == DOWN) {
    keys[3] = true;
  }
  if (key == 'm' || key == 'M') {
    keys[4] = true;
  }
    if (key == 'z' || key == 'Z') {
    keys[5] = true;
  }
  if (key == 'x' || key == 'X') {
    keys[6] = true;
  }
  if (key == 'b' || key == 'B') {
    keys[7] = true;
  }
}

void keyReleased() {
  if (key == 'w' || key =='W') {
    keys[0] = false;
  }
  if (key == 's' || key =='S') {
    keys[1] = false;
  }

  if (keyCode == UP) {
    keys[2] = false;
  }
  if (keyCode == DOWN) {
    keys[3] = false;
  }
}
