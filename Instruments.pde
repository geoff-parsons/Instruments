
import java.util.Vector;

Vector dials;
int val;

void setup() {
  size(1000, 400);
  background(0);
  dials = new Vector();
  dials.add( new Dial("Revs", new Point(width/2, height/2)) );
  dials.add( new Dial("Speed", new Point(width/4, height/2)) );
  dials.add( new Dial("Wangs", new Point(width-width/4, height/2)) );
  val = 0;
}


void draw() {
  background(0);
  
  for( int i=0; i<dials.size(); i++) {
    try {
      Dial dial = (Dial) dials.get(i);
      dial.setValue(val);
      dial.draw();
      val += 1;
      Thread.sleep(100);
    } catch(Exception e) { }
  }
}
