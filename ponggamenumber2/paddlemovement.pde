
public void paddleMoveB () {
  if (keys[0] == true) {
    leftPaddle.paddleMovementP1();
  }
  if (keys[1] == true) {
    leftPaddle.paddleMovementP2();
  }
}
public void paddleMoveR () {
  if (keys[2] == true) {
    rightPaddle.paddleMovementP1();
  }
  if (keys[3] == true) {
    rightPaddle.paddleMovementP2();
  }
}
