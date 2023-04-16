

circle C1 = new circle(360, 0, 0, 300, 500, 100, 1, 255,0,0);
circle C2 = new circle(360, 0, 0, 600, 600, 33, 3, 255, 255, 0);
circle C3 = new circle(360, 0, 0, 600, 600, 20, 5, 0, 255, 0);
circle C4 = new circle(360, 0, 0, 600, 600, 14, 7, 0, 255, 255);
circle C5 = new circle(360, 0, 0, 600, 600, 11, 9, 0, 0, 255);
circle C6 = new circle(360, 0, 0, 600, 600, 9, 11, 255, 0, 255);

float[] xpoints = new float[400];
float[] ypoints = new float[400];
int i = 0;
int j = 6;
float graphy;
float graphx;

void setup() {
  size(1000, 1000);
  frameRate(60);
}

class circle {
  float t, x, y, xc, yc, r, n, rc, g, b;
  circle (float theta, float posx, float posy, float offx, float offy, float radius, float thetaN, float red, float green, float blue) {
    t = theta;
    x = posx;
    y = posy;
    xc = offx;
    yc = offy;
    r = radius;
    n = thetaN;
    rc = red;
    g = green;
    b = blue;
  }
  void Update() {

    this.x = this.r * cos(this.n * this.t * PI / 180);
    this.y = this.r * sin(this.n * this.t * PI / 180);
    this.t -= 1;
    if (this.t == 0) {
      this.t = 360;
    }
  }
  void Draw() {
    noFill();
    stroke(this.rc, this.g, this.b);
    circle(this.xc, this.yc, 2 * this.r);
    line(this.xc, this.yc, this.x + this.xc, this.y + this.yc);
  }
}

void keyPressed() {
  if (key == '1') {
    j = 1;
  }
  if (key == '2') {
    j = 2;
  }
  if (key == '3') {
    j = 3;
  }
  if (key == '4') {
    j = 4;
  }
  if (key == '5') {
    j = 5;
  }
  if (key == '6') {
    j = 6;
  }
}


void draw() {
    clear();
    background(180);
    textSize(32);
    text("change number of circles by clicking 1 - 6 on keyboard :D", 100, 800);
    if (j == 1) {
      C1.Update();
      C1.Draw();
      C2.xc = C1.x + C1.xc;
      C2.yc = C1.y + C1.yc;
      C2.Update();
      C3.xc = C2.x + C2.xc;
      C3.yc = C2.y + C2.yc;
      C3.Update();
      C4.xc = C3.x + C3.xc;
      C4.yc = C3.y + C3.yc;
      C4.Update();
      C5.xc = C4.x + C4.xc;
      C5.yc = C4.y + C4.yc;
      C5.Update();
      C6.xc = C5.x + C5.xc;
      C6.yc = C5.y + C5.yc;
      C6.Update();
      graphx = 700;
      graphy = C1.y + C1.yc;;
      line(graphx, graphy, C1.x + C1.xc, C1.y + C1.yc);
    }
    if (j == 2) {
      C1.Update();
      C1.Draw();
      C2.xc = C1.x + C1.xc;
      C2.yc = C1.y + C1.yc;
      C2.Update();
      C2.Draw();
      C3.xc = C2.x + C2.xc;
      C3.yc = C2.y + C2.yc;
      C3.Update();
      C4.xc = C3.x + C3.xc;
      C4.yc = C3.y + C3.yc;
      C4.Update();
      C5.xc = C4.x + C4.xc;
      C5.yc = C4.y + C4.yc;
      C5.Update();
      C6.xc = C5.x + C5.xc;
      C6.yc = C5.y + C5.yc;
      C6.Update();
      graphx = 700;
      graphy = C2.y + C2.yc;;
      line(graphx, graphy, C2.x + C2.xc, C2.y + C2.yc);
    }
    if (j == 3) {
      C1.Update();
      C1.Draw();
      C2.xc = C1.x + C1.xc;
      C2.yc = C1.y + C1.yc;
      C2.Update();
      C2.Draw();
      C3.xc = C2.x + C2.xc;
      C3.yc = C2.y + C2.yc;
      C3.Update();
      C3.Draw();
      C4.xc = C3.x + C3.xc;
      C4.yc = C3.y + C3.yc;
      C4.Update();
      C5.xc = C4.x + C4.xc;
      C5.yc = C4.y + C4.yc;
      C5.Update();
      C6.xc = C5.x + C5.xc;
      C6.yc = C5.y + C5.yc;
      C6.Update();
      graphx = 700;
      graphy = C3.y + C3.yc;;
      line(graphx, graphy, C3.x + C3.xc, C3.y + C3.yc);
    }
    if (j == 4) {
      C1.Update();
      C1.Draw();
      C2.xc = C1.x + C1.xc;
      C2.yc = C1.y + C1.yc;
      C2.Update();
      C2.Draw();
      C3.xc = C2.x + C2.xc;
      C3.yc = C2.y + C2.yc;
      C3.Update();
      C3.Draw();
      C4.xc = C3.x + C3.xc;
      C4.yc = C3.y + C3.yc;
      C4.Update();
      C4.Draw();
      C5.xc = C4.x + C4.xc;
      C5.yc = C4.y + C4.yc;
      C5.Update();
      C6.xc = C5.x + C5.xc;
      C6.yc = C5.y + C5.yc;
      C6.Update();
      graphx = 700;
      graphy = C4.y + C4.yc;;
      line(graphx, graphy, C4.x + C4.xc, C4.y + C4.yc);
    }
    if (j == 5) {
      C1.Update();
      C1.Draw();
      C2.xc = C1.x + C1.xc;
      C2.yc = C1.y + C1.yc;
      C2.Update();
      C2.Draw();
      C3.xc = C2.x + C2.xc;
      C3.yc = C2.y + C2.yc;
      C3.Update();
      C3.Draw();
      C4.xc = C3.x + C3.xc;
      C4.yc = C3.y + C3.yc;
      C4.Update();
      C4.Draw();
      C5.xc = C4.x + C4.xc;
      C5.yc = C4.y + C4.yc;
      C5.Update();
      C5.Draw();
      C6.xc = C5.x + C5.xc;
      C6.yc = C5.y + C5.yc;
      C6.Update();
      graphx = 700;
      graphy = C5.y + C5.yc;;
      line(graphx, graphy, C5.x + C5.xc, C5.y + C5.yc);
    }
    if (j == 6) {
      C1.Update();
      C1.Draw();
      C2.xc = C1.x + C1.xc;
      C2.yc = C1.y + C1.yc;
      C2.Update();
      C2.Draw();
      C3.xc = C2.x + C2.xc;
      C3.yc = C2.y + C2.yc;
      C3.Update();
      C3.Draw();
      C4.xc = C3.x + C3.xc;
      C4.yc = C3.y + C3.yc;
      C4.Update();
      C4.Draw();
      C5.xc = C4.x + C4.xc;
      C5.yc = C4.y + C4.yc;
      C5.Update();
      C5.Draw();
      C6.xc = C5.x + C5.xc;
      C6.yc = C5.y + C5.yc;
      C6.Update();
      C6.Draw();
      graphx = 700;
      graphy = C6.y + C6.yc;;
      line(graphx, graphy, C6.x + C6.xc, C6.y + C6.yc);
    }

    xpoints[i] = graphx;
    ypoints[i] = graphy;
    i++;
    for (int k = 0; k < 400; k++) { 
      stroke(0);
      strokeWeight(2);
      circle(xpoints[k], ypoints[k], 3);
      strokeWeight(1);
      
       //if (k > 0) {
       //  strokeWeight(2);
       //  line(xpoints[k], ypoints[k], xpoints[k - 1], ypoints[k - 1]);
       //  strokeWeight(1);
       //}
       xpoints[k] += 1; 
    }
    if (i == 400) { 
      i = 0;
    }
}
