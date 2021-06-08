//ball variables
color  defaultColour = 0;
float xSpeed = 2.8;
float ySpeed = 2.8;
int xDirection = 1;
int yDirection = 1;
color DG = #054309;

int x = displayWidth/2;
int y = displayHeight/2;
int diameterX = displayHeight/20;
int diameterY = diameterX;
int ballColour = color(#CB16D8);

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
