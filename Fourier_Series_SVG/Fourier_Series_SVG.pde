FloatList xpoints = new FloatList();
FloatList ypoints = new FloatList();
Circle[] circles;
DFTVector[] vectors;
Complex[] c;
PathC[] path;
float[] x;
float[] y;
  float[] xpointsA;
  float[] ypointsA;
float time = 0;
int i = 0;
int r = 0;
int h = 0;
void setup() {
  size(1920, 1080);
  String[] coords = loadStrings("info.txt");
  String[] subCoordsx = new String[coords.length];
  String[] subCoordsy = new String[coords.length];
  x = new float[coords.length];
  y = new float[coords.length];
  for (int i = 0; i < coords.length; i++) {
    for (int y = 0; y < coords[i].length(); y++) {
      if (coords[i].charAt(y) == ','){
        subCoordsx[i] = coords[i].substring(0, coords[i].length() - (coords[i].length() - y));
        subCoordsy[i] = coords[i].substring(y + 1, coords[i].length());
      }
    }
  }
  for (int t = 0; t < coords.length; t++) {    
    x[t] = float(subCoordsx[t]);
    y[t] = float(subCoordsy[t]);
  }
  int step = 1;
    c = new Complex[(coords.length / step)];
    for (int i = 0; i < coords.length; i += step) {

      c[i / step] = new Complex(x[i], y[i]);
  }
  DFT(c);
  sort(vectors);
  for (int i = 0; i < vectors.length; i++) {
  }
}
void draw() {
  clear();
  background(180);
  PVector v = epicycles(width / 2, height /2, 0, vectors);
  path = new PathC[h + 1];
  path[h] = new PathC(v.x, v.y);
  float graphx = v.x;
  float graphy = v.y;
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
  for (int i = 0; i < path.length; i++) {
    strokeWeight(3);
    stroke(0);
    circle(path[i].x, path[i].y, 3);
    strokeWeight(1);
  } 
  float dt = TWO_PI / vectors.length;
  time += dt;
  if (time > TWO_PI) {
    time = 0;
  }
  if (xpointsA.length > 5000) {
    xpoints.remove(0);
    ypoints.remove(0);
  }
}
PVector epicycles(float x, float y, float rotation, DFTVector[] vectors) {
  for (i = 0; i < vectors.length; i++) {
    float prevx = x;
    float prevy = y;
    float freq = vectors[i].f;
    float radius = vectors[i].a;
    float phase = vectors[i].p * PI / 180;
    x += radius * cos(freq * time + phase + rotation);
    y += radius * sin(freq * time + phase + rotation);
    stroke(255);
    noFill();
    ellipse(prevx, prevy, radius * 2, radius * 2);
    stroke(255);
    line(prevx, prevy, x, y);
  }
  return new PVector(x, y);
}
class PathC {
  float x, y;
  PathC (float x, float y) {
    this.x = x;
    this.y = y;
  }
}
DFTVector[] DFT(Complex[] x) {
  vectors = new DFTVector[x.length];
  int N = x.length;
  for (int k = 0; k < N; k++) {
    Complex sum = new Complex(0, 0);
    for (int n = 0; n < N; n++) {
      float theta = (TWO_PI * k * n) / N;
      Complex c = new Complex(cos(theta), -sin(theta));
      sum.add(x[n].mult(c));
    }
    sum.a /= N;
    sum.b /= N;
    float amp = sqrt(sum.a * sum.a + sum.b * sum.b);
    float freq = k;
    float phase = atan2(sum.b, sum.a) * 180 / PI;
    vectors[k] = new DFTVector(sum.b, sum.a, amp, freq, phase);
  }
  return vectors;
}
DFTVector[] sort(DFTVector[] vectors) {
  DFTVector temp;
  for (int o = 0; o < vectors.length - 1; o++) {
    for (int i = 0; i < vectors.length - 1; i++) {
      if (vectors[i].a < vectors[i + 1].a) {
        temp = vectors[i];
        vectors[i] = vectors[i + 1];
        vectors[i + 1] = temp;
      }
    }
  }
  return vectors;
}
