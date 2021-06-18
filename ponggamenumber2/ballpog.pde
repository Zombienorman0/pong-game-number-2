public class BallPog {//ball variables
  private color ballColour = #A20BA2;
  
  //change speed every game
  private float ySpeed = 2.8;
  private float ySpeed1 = 3.5;
  private int yDirection = 1;
  private int yDirection1 = -1;
  public color DG = #054309;
  public color G = #2AD833;
  public float x, y, diameterX, xt, yt, diameterXt;

  public BallPog(int displayWidth, int displayHeight) {
    this.x = displayWidth/2;
    this.y = displayHeight/2;
    this.diameterX = displayHeight/20;
    this.xt = x;
    this.yt = y;
    this.diameterXt = diameterX;
  } // end consturctor

  private void draw() {
    scorescore();
    ballers();
    extraBall ();
    actualScore();
    actualScore2();
  }

  private void ballers() {
    fill(ballColour);
    ellipse(x, y, diameterX, diameterX);
    stroke(0);
    noStroke();
    movement();
  }
  private void extraBall () {
    if (keys[6] == true) {
      fill(ballColour);
      ellipse(xt, yt, diameterXt, diameterXt);
      stroke(0);
      noStroke();
      movement2();
    }
  }

  private void movement() {
    y = y + ( ySpeed * yDirection );

    if (y > displayHeight - diameterX/2|| y < diameterX -20) {
      yDirection *= +-1;
    }
  }
  private void movement2() {
    yt = yt - ( ySpeed1 * yDirection1);
    if (yt > displayHeight - diameterXt/2|| yt < diameterXt -20) {
      yDirection1 *= +-1;
    }
  }

  public void scorescore () {
    wefu();
    //switch between Multiplayer & Practice
    fill(#13589B);
    textSize(50);
    text("Practice", 300, 100);
    noFill();
    if (x < diameterX -20) {
      ball = new BallPog(displayWidth, displayHeight);
    } else if (x > displayWidth - diameterX/2) {//x > displayWidth - diameterX/2
      xDirection *= +-1;
    }
    if (keys[4] == true) {
      wefu();
      fill(#AF1320);
      textSize(50);
      text("Multiplayer", 1400, 100);
      noFill();
      if (x < diameterX -20) {
        ball = new BallPog(displayWidth, displayHeight); 
        score[1] += 1;
      } else if (x > displayWidth - diameterX/2) {//x > displayWidth - diameterX/2
        ball = new BallPog(displayWidth, displayHeight);  
        score[0] += 1;
      }
    }
  }
}
