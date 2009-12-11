class Dial {
  PFont font = createFont("verdana", 12);
  private int minValue = 0;
  private int maxValue = 100;
  private int division = 10;
  private int radius = 100;
  private int value = 50;
  private Point center;
  
  String label = "";
  
  public Dial(String label, Point center) {
    this.label = label;
    this.center = center;
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
  
  public void draw() {
    ellipseMode(RADIUS);
    textFont(font);
    
    // background
    fill(255);
    stroke(255,0,0);
    strokeWeight(3);
    ellipse(center.x, center.y, radius, radius);
    
    // needle
    stroke(255,0,0);
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
    fill(255,0,0);
    text(label, center.x-textWidth(label)/2, center.y+radius+20);
  }
  
}
