
float[] xpoints = new float[400];
float[] ypoints = new float[400];
Circle[] circles;
int i = 0;
float graphy;
float graphx;
void setup() {
  String[] info = loadStrings("info.txt");
  int numCircles = int(info[0]);
  float[] radius = new float[numCircles];
  float[] frequency = new float[numCircles];
  float[] angle = new float[numCircles];
  size(1000, 1000);
  frameRate(60);
  int o = 2;    
  for (int y = 0; y < numCircles; y++) {  
      radius[y] = float(info[o]);
      frequency[y] = float(info[o + 1]);
      angle[y] = float(info[o + 2]);
      println(y, o);
      o += 4;
    }
  circles = new Circle[numCircles];
  int numCircle = 0;
  for (int k = 0; k < circles.length; k++) {
    circles[numCircle] = new Circle(angle[numCircle], 0, 0, 500, 500, radius[numCircle], frequency[numCircle]);
    numCircle++;
  }
}
void draw() {
  clear();
  background(180);
    for (int p = 0; p < circles.length; p++) {
      if (p > 0) {
        circles[p].xc = circles[p - 1].x + circles[p - 1].xc;
        circles[p].yc = circles[p - 1].y + circles[p - 1].yc;
      }
      circles[p].Update();
      circles[p].Draw();
    }
    graphx = circles[circles.length - 1].x + circles[circles.length - 1].xc;
    graphy = circles[circles.length - 1].y + circles[circles.length - 1].yc;;
    line(graphx, graphy, circles[circles.length - 1].x + circles[circles.length - 1].xc, circles[circles.length - 1].y + circles[circles.length - 1].yc);  
    xpoints[i] = graphx;
    ypoints[i] = graphy;
    i++;
    for (int k = 0; k < 400; k++) { 
      stroke(0);
      strokeWeight(2);
      circle(xpoints[k], ypoints[k], 3);
      strokeWeight(1);
    }
    if (i == 400) { 
      i = 0;
    }
}
