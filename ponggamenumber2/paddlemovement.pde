private void paddleMoveB () {
  if (keys[0] == true) {
    paddle.paddleMovementP1();
  }
  if (keys[1] == true) {
    paddle.paddleMovementP2();
  }
}
private void paddleMoveR () {
  if (keys[2] == true) {
    paddle.paddleMovementP3();
  }
  if (keys[3] == true) {
    paddle.paddleMovementP4();
  }
}
