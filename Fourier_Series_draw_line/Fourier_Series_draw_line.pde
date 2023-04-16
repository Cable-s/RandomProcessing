FloatList xpoints = new FloatList();
FloatList ypoints = new FloatList();
Circle[] circles;
int i = 0;
void setup() {
  size(1000, 1000);
  frameRate(60);
  String[] info = loadStrings("info.txt");
  int numCircles = int(info[6]);
  float[] radius = new float[numCircles];
  float[] frequency = new float[numCircles];
  float[] angle = new float[numCircles];
  int o = 8;    
  for (int y = 0; y < numCircles; y++) {  
      radius[y] = float(info[o]);
      frequency[y] = float(info[o + 1]);
      angle[y] = float(info[o + 2]);
      o += 4;
    }
  circles = new Circle[numCircles];
  for (int k = 0; k < circles.length; k++) {
    circles[k] = new Circle(angle[k], 0, 0, 500, 500, radius[k], frequency[k]);
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
    float graphx = circles[circles.length - 1].x + circles[circles.length - 1].xc;
    float graphy = circles[circles.length - 1].y + circles[circles.length - 1].yc;;
    xpoints.append(graphx);
    ypoints.append(graphy);
    float[] xpointsA = xpoints.array();
    float[] ypointsA = ypoints.array();
    i++;
    for (int k = 0; k < xpointsA.length; k++) { 
      if (k != 0) {
        stroke(0);
        strokeWeight(3);
        line(xpointsA[k], ypointsA[k], xpointsA[k - 1], ypointsA[k - 1]);
        strokeWeight(1);
      }
    }
    if (xpointsA.length > 1000) {
      xpoints.remove(0);
      ypoints.remove(0);
    }
    println(xpointsA.length);
}
