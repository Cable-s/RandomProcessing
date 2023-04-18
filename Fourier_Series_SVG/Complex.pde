class Complex {
  float a, b;
  Complex (float re, float im) {
    a = re;
    b = im;
  }
  Complex mult(Complex c) {
    float re = this.a * c.a - this.b * c.b;
    float im = this.a * c.b + this.b * c.a;
    return new Complex(re, im);
  }
  Complex add(Complex c) {
    this.a += c.a;
    this.b += c.b;
    return new Complex(this.a, this.b);
  }
}
