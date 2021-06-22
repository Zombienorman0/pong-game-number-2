ArrayList<Shape> shapes = new ArrayList<Shape>();

abstract class Shape {
  float xD;
  float yD;
  float wD;
  float hD;

  Shape (float xParameter, float yParameter, float wParameter, float hParameter) {
    this.xD = xParameter;
    this.yD = yParameter;
    this.wD = wParameter;
    this.hD = hParameter;
  }//End Constructor

  abstract void draw();
}//End class Shape
