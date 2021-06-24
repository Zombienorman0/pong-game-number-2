public class BallPog extends Shape {//ball variable
  private color c;
  private float radius;

  //change speed every game
  private float ySpeed = 2.8;
  private int xDirection = 1;
  private int yDirection = 1;
  private int xDirection1 = -1;
  private color DG = #054309;
  private color G = #2AD833;


  public BallPog(float xD, float yD, float radius, color c) {
    super(xD, yD);
    this.radius = radius;
    this.c = c;
  } // end consturctor

  void draw() {
    scorescore();
    ballers();
    extraBall();
    actualScore();
    actualScore2();
  }

  private void ballers() {
    fill(c);
    ellipse(xD, yD, radius, radius);
    stroke(0);
    noStroke();
    movement();
    leftPaddle.ballPaddleBounce();
    rightPaddle.ballPaddleBounce1();
  }
  private void extraBall () {
    if (keys[6] == true) {
      fill(c);
      ellipse(xD, yD, radius, radius);
      stroke(0);
      noStroke();
      movement();
      leftPaddle.ballPaddleBounce();
      rightPaddle.ballPaddleBounce1();
    }
  }

  private void movement() {
    yD = yD + ( ySpeed * yDirection );

    if (yD > displayHeight - radius|| yD < radius -20) {
      yDirection *= +-1;
    }
  }

  public void scorescore () {
    wefu();
    //switch between Multiplayer & Practice
    fill(#13589B);
    textSize(50);
    text("Practice", 300, 100);
    noFill();
    if (xD < radius -20) {
      ball = new BallPog(displayWidth/2, displayHeight/2, displayHeight/20, #A20BA2);
      extraBall = new BallPog(displayWidth/2, displayHeight/2, displayHeight/20, #D538D6);
    } else if (xD > displayWidth - radius/2) {//x > displayWidth - diameterX/2
      xDirection *= +-1;
    }
    if (keys[4] == true) {
      wefu();
      fill(#AF1320);
      textSize(50);
      text("Multiplayer", 1400, 100);
      noFill();
      if (xD < radius -20) {
        ball = new BallPog(displayWidth/2, displayHeight/2, displayHeight/20, #A20BA2);
        extraBall = new BallPog(displayWidth/2, displayHeight/2, displayHeight/20, #D538D6); 
        score[1] += 1;
      } else if (xD > displayWidth - radius/2) {//x > displayWidth - diameterX/2
        ball = new BallPog(displayWidth/2, displayHeight/2, displayHeight/20, #A20BA2);
        extraBall = new BallPog(displayWidth/2, displayHeight/2, displayHeight/20, #D538D6);  
        score[0] += 1;
      }
    }
  }
  public color DG_getter () {
    return DG;
  }// end getter
  public color G_getter () {
    return G;
  }// end getter
  public int xDirection_getter () {
    return xDirection;
  }// end getter
  public int xDirection1_getter () {
    return xDirection1;
  }// end getter
  public float xD_getter () {
    return xD;
  }// end getter
  public float yD_getter () {
    return yD;
  }// end getter
  public float radius_getter () {
    return radius;
  }// end getter
}
