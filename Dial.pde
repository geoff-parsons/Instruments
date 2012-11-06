class Dial {
  PFont font = createFont("verdana", 12);
  private int minValue = 0;
  private int maxValue = 100;
  private int division = 10;
  private int radius = 100;
  private int value = 50;
  private Point center;
  private Color backgroundColor = new Color(255);
  private Color needleColor = new Color(255, 0, 0);
  private Color borderColor = new Color(255, 0, 0);
  private Color labelColor = new Color(255, 0, 0);
  
  String label = "";
  
  public Dial(String label, Point center) {
    this(label, center, 100);
  }
  public Dial(String label, Point center, int radius) {
    this.label = label;
    this.center = center;
    this.radius = radius;
  }
  
  public void setValue(int val) {
    this.value = val;
  }
  public int getValue() {
    return this.value;
  }
  
  public void setBackgroundColor(Color backgroundColor) {
    this.backgroundColor = backgroundColor;
  }
  
  public void setNeedleColor(Color needleColor) {
    this.needleColor = needleColor;
  }
  
  public void setBorderColor(Color borderColor) {
    this.borderColor = borderColor;
  }
  
  public void setLabelColor(Color labelColor) {
    this.labelColor = labelColor;
  }
  
  public void draw() {
    ellipseMode(RADIUS);
    textFont(font);
    
    // background
    backgroundColor.makeFill();
    borderColor.makeStroke();
    strokeWeight(3);
    ellipse(center.x, center.y, radius, radius);
    
    // needle
    needleColor.makeStroke();
    strokeWeight(2);
    
    float angle = value / (float)(maxValue-minValue) * 360.0 + 90;
    float x = center.x + cos(radians(angle)) * (float)(radius/2.0);
    float y = center.y + sin(radians(angle)) * (float)(radius/2.0);
    line(center.x, center.y, x, y);
    
    // center dot
    fill(0);
    noStroke();
    ellipse(center.x, center.y, 4, 4);

    // label
    labelColor.makeFill();
    text(label, center.x-textWidth(label)/2, center.y+radius+20);
  }
  
}
