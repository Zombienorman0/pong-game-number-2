ArrayList<Shape> shapes = new ArrayList<Shape>();

abstract class Shape {
  float xD;
  float yD;

  Shape (float xParameter, float yParameter) {
    this.xD = xParameter;
    this.yD = yParameter;
  }//End Constructor

  abstract void draw();
}//End class Shape
