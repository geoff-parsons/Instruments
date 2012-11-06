
import java.util.Vector;

Vector dials;
int val;

void setup() {
  size(1000, 400);
  background(0);
  dials = new Vector();
  
  Dial speedDial = new Dial("Speed", new Point(width/2, height/2));
  speedDial.setBorderColor( new Color(299,34,34) );
  speedDial.setLabelColor( new Color(299, 34, 34) );
  dials.add( speedDial );
  
  Dial revDial = new Dial("Revs", new Point(width/4, height/2));
  revDial.setBorderColor( new Color(33, 141, 255) );
  revDial.setLabelColor( new Color(33, 141, 255) );
  dials.add( revDial );
  
  Dial fuelDial = new Dial("Fuel", new Point(width-width/4, height/2));
  fuelDial.setBorderColor( new Color(166, 227, 45) );
  fuelDial.setLabelColor( new Color(166, 227, 45) );
  dials.add( fuelDial );
  
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
    } catch(Exception e) {
      println("There was an error rendering the dials!");
      e.printStackTrace();
    }
  }
}
