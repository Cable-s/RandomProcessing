class Circle {
  float t, x, y, xc, yc, r, n, rc, g, b;
  Circle (float theta, float posx, float posy, float offx, float offy, float radius, float thetaN) {
    t = theta;
    x = posx;
    y = posy;
    xc = offx;
    yc = offy;
    r = radius;
    n = thetaN;
  }
  void Update() {
    this.x = this.r * cos((this.n * time + this.t) * PI / 180);
    this.y = this.r * sin((this.n * time +this.t) * PI / 180);
    this.t += TWO_PI / vectors.length;
  }
  void Draw() {
    noFill();
    circle(this.xc, this.yc, 2 * this.r);
    line(this.xc, this.yc, this.x + this.xc, this.y + this.yc);
  }
}
