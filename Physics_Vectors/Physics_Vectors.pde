float x1;
float x2;
float y1;
float y2;
float magnitude;
float thetaDegrees;
float xI = 500;
float yI = 500;
String direction;
Vector vector1;
ArrayList<Vector> vectors = new ArrayList<Vector>();
boolean pressed = false;

void setup() {
  size(1000, 1000);
  background(255);
  fill(0);
  textSize(16);
  text("r to reset, a to add", 400, 50);
  fill(255);
  square(0,0,300);
}

void draw() {
  if (pressed == true) {
    clear();
    background(255);
    square(0,0,300);
    xI = 500;
    yI = 500;
    DrawVectors();
    line(x1, y1, x2, y2);
  }
}

class Vector {
  float magnitude, thetaDegrees, xStart, yStart, xComponent, yComponent;
  String direction;
    Vector (float m, float theta, float x, float y, float xC, float yC, String dir) {
      magnitude = m;
      thetaDegrees = theta;
      xStart = x;
      yStart = y;
      xComponent = xC;
      yComponent = yC;
      direction = dir;
    }
}

void mousePressed() {
  println("              ");
  pressed = true;
  x1 = mouseX;
  y1 = mouseY;
  x2 = x1;
  y2 = y1;
}

void mouseDragged() {
  x2 = mouseX;
  y2 = mouseY;
}

void mouseReleased() {
  if (mouseX <= 300 && mouseY <= 300){
    pressed = false;
    magnitude = sqrt(((x2 - x1)*(x2 - x1)) + ((y2 - y1)*(y2 - y1)));
    thetaDegrees = abs((atan((y2 - y1) / (x2 - x1))) * (180 / PI));
    
    if ((x2 - x1) > 0 && (y2 - y1) > 0) {
      direction = "S of E";
    }
    if ((x2 - x1) < 0 && (y2 - y1) > 0) {
      direction = "S of W";
    }
    if ((x2 - x1) > 0 && (y2 - y1) < 0) {
      direction = "N of E";
    }
    if ((x2 - x1) < 0 && (y2 - y1) < 0) {
      direction = "N of W";
    }
    
  
      float xComponent = 0;
      float yComponent = 0;
      if (direction == "N of E"){
        xComponent = magnitude * cos(thetaDegrees * PI / 180);
        yComponent = -1 * magnitude * sin(thetaDegrees * PI / 180);
      }
      if (direction == "N of W"){
        xComponent = -1 * magnitude * cos(thetaDegrees * PI / 180);
        yComponent = -1 * magnitude * sin(thetaDegrees * PI / 180);
      }
      if (direction == "S of E"){
        xComponent = magnitude * cos(thetaDegrees * PI / 180);
        yComponent = magnitude * sin(thetaDegrees * PI / 180);
      }
      if (direction == "S of W"){
        xComponent = -1 * magnitude * cos(thetaDegrees * PI / 180);
        yComponent = magnitude * sin(thetaDegrees * PI / 180);
      }
    vectors.add(new Vector(magnitude, thetaDegrees, x1, y1, xComponent, yComponent, direction));
    xI = 500;
    yI = 500;
    DrawVectors();
  }
}

void DrawVectors() {

  for (int i = 0; i < vectors.size(); i++) {
    //println(vectors.get(i).magnitude, vectors.get(i).thetaDegrees, vectors.get(i).xStart, vectors.get(i).yStart, vectors.get(i).direction);
    line(vectors.get(i).xStart, vectors.get(i).yStart, vectors.get(i).xStart + vectors.get(i).xComponent, vectors.get(i).yStart + vectors.get(i).yComponent);
    

    //println(vectors.get(i).xComponent, vectors.get(i).yComponent);
    //println(xI + vectors.get(i).xComponent, yI + vectors.get(i).yComponent);
    line(xI, yI, xI + vectors.get(i).xComponent, yI + vectors.get(i).yComponent);
    xI += vectors.get(i).xComponent;
    yI += vectors.get(i).yComponent;
  }
}

void keyPressed() {
  if (key == 'r') {
    clear();
    background(255);
    square(0,0,300);
    for (int i = vectors.size() - 1; i >= 0; i--) {
      vectors.remove(i);
    }
  }
  if (key == 'a') {
    stroke(255,0,0);
    line(500, 500, xI, yI);
    line(xI, yI - 10, xI, yI + 10);
    stroke(0);
    float resultantMagnitude = sqrt(((xI - 500) * (xI - 500)) + ((yI - 500) * (yI - 500)));
    float resultantAngle = abs(atan((yI - 500) / (xI - 500)) * 180 / PI);
    String resultantDirection = "";
    
    if (xI - 500 > 0 && yI - 500 > 0) {
      resultantDirection = "N of W";
    }
    if (xI - 500 < 0 && yI - 500 < 0) {
      resultantDirection = "S of E";
    }
    if (xI - 500 > 0 && yI - 500 < 0) {
      resultantDirection = "N of E";
    }
    if (xI - 500 < 0 && yI - 500 > 0) {
      resultantDirection = "S of W";
    }
    //println(resultantMagnitude + " units at " + resultantAngle + " degrees [" + resultantDirection  + "]"); 
    fill(0);
    textSize(16);
    text(resultantMagnitude + " units at " + resultantAngle + " degrees [" + resultantDirection  + "]", 100, 700);
    fill(255);
  }
  if (key != 'a' || key != 'r') {
    fill(0);
    textSize(16);
    text("r to reset, a to add", 400, 50);
    fill(255);
  }
}
