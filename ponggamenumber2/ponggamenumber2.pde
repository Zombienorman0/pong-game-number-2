

BallPog ball;
//global variables

void setup() {
  fullScreen(); //displayWidth, displayHeight
  background(0);
  noStroke();
 // geometryCheck();
  ball = new BallPog(displayWidth, displayHeight);
  //ball = new tablePog();
  
}

void draw() {
  ball.draw();
  
}

// void keyPressed() {}

//void mousePressed() {}
