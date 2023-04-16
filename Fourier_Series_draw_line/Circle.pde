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
    this.x = this.r * cos(this.n * this.t * PI / 180);
    this.y = this.r * sin(this.n * this.t * PI / 180);
    this.t -= 1;
    if (this.t == 0) {
      this.t = 360;
    }
  }
  void Draw() {
    noFill();
    circle(this.xc, this.yc, 2 * this.r);
    line(this.xc, this.yc, this.x + this.xc, this.y + this.yc);
  }
}
