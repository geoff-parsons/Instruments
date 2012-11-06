class Color {
  public float red;
  public float green;
  public float blue;
  public float alpha;
  
  public Color(float r, float g, float b, float a) {
    this.red = r;
    this.green = g;
    this.blue = b;
    this.alpha = a;
  }

  public Color(float c, float a) {
    this(c, c, c, a);
  }
  public Color(float c) {
    this(c, 255.0);
  }
  public Color(float r, float g, float b) {
    this(r, g, b, 255.0);
  }
  
  public void makeFill() {
    fill(this.red, this.green, this.blue, this.alpha);
  }
  
  public void makeStroke() {
    stroke(this.red, this.green, this.blue, this.alpha);
  }  
}
