

class BallPog {
  float x, y, diameterX, diameterY;//ball variables
  color ballColour, defaultColour = 0;
  float xSpeed = 2.8;
  float ySpeed = 2.3;
  int xDirection = 1;
  int yDirection = 1;

  BallPog(int displayWidth, int displayHeight) {

    x = displayWidth/2;
    y = displayHeight/2;
    diameterX = displayHeight/20;
    diameterY = diameterX;
    ballColour = color(#CB16D8);
  } // end consturctor



  void draw() {
    movement();
    fill(ballColour);
    ellipse(x, y, diameterX, diameterY);
    fill(defaultColour);
  }

  void movement() {

    x = x + ( xSpeed * xDirection );
    y = y + ( ySpeed * yDirection );

    if (x > displayWidth - diameterX/2 || x < diameterX -20) {
      xDirection *= -1;
    }
    if (y > displayHeight - diameterY/2|| y < diameterY -20) {
      yDirection *= -1;
    }
  }
} 
