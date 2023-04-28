
import peasy.*;
PeasyCam cam;
float x, y, z;
float σ = 10;
float ρ = 12;
float β = 8/3;
float dt = 0.01;
int T = 100000;
int test;
int iterator;
float[] xpoints = new float[T];
float[] ypoints = new float[T];
float[] zpoints = new float[T];
void setup() {
  size(1000,1000, P3D);
  cam = new PeasyCam(this, 500);
  cam.lookAt(500D, 500D, 500D);
  x = 20.0;
  y = 20.0;
  z = 20.0; 
  for (int i = 0; i < T; i++) {
    float dx_dt = σ * (y - x);
    float dy_dt = x * (ρ - z) - y;
    float dz_dt = (x * y) - (β * z);
    x += dx_dt * dt;
    y += dy_dt * dt;
    z += dz_dt * dt; 
    xpoints[i] = x * 10;
    ypoints[i] = y * 10;
    zpoints[i] = z * 10;
  }
}
void update() {
  x = 20.0;
  y = 20.0;
  z = 20.0; 
  for (int i = 0; i < T; i++) {
    float dx_dt = σ * (y - x);
    float dy_dt = x * (ρ - z) - y;
    float dz_dt = (x * y) - (β * z);
    x += dx_dt * dt;
    y += dy_dt * dt;
    z += dz_dt * dt; 
    xpoints[i] = x * 10;
    ypoints[i] = y * 10;
    zpoints[i] = z * 10;
  }
}


void draw() {
  clear();
  background(255);
  if (keyPressed) {
    if (key == '1') {
      σ += 0.05;
      update();
    }
    if (key == '2') {
      σ -= 0.05;
      update();
    }
    if (key == '3') {
      ρ += 0.05;
      update();
    }
    if (key == '4') {
      ρ -= 0.05;
      update();
    }
    if (key == '5') {
      β += 0.05;
      update();
    }
    if (key == '6') {
      β -= 0.05;
      update();
    }
    if (key == '7') {
      σ = 10;
      ρ = 12;
      β = 8/3;
      update();
    }
  }
  for (int i = 0; i < xpoints.length; i++) {
    if (i != xpoints.length -1) {
    line(xpoints[i] + 500, ypoints[i] + 500, zpoints[i] + 500, xpoints[i + 1] + 500, ypoints[i + 1] + 500, zpoints[i + 1] + 500);
    }
    if (i == xpoints.length - 1) {
       test = 1;
    }
  }  
  if (test == 1) {
    iterator++;
    stroke(255, 0, 0);
    pushMatrix();
    translate(xpoints[iterator] + 500, ypoints[iterator] + 500, zpoints[iterator] + 500);
    sphere(2);
    stroke(0);
    popMatrix();
    test = 0;
    if (iterator == xpoints.length) {
      iterator = 0;
    }
  }
  pushMatrix();
  translate(300, -300, 200);
  line(0, 1200, 0, 1200, 1200, 0);
  textSize(128);
  fill(0);
  text("X", 600,1200,0);
  line(0, 0, 0, 0, 1200, 0);
  text("Y", 0,600,0);
  line(0,1200,0,0,1200,1200);
  text("Z", 0,1200,600);

  popMatrix();
   textSize(64);
  text("1: add 0.05 to σ", -275,0 - 200,0);
  text("2: subtract 0.05 from σ", -275,64 - 200,0);
  text("3: add 0.05 to ρ", -275,2 * 64 - 200,0);
  text("4: subtract 0.05 from ρ", -275,3 * 64 - 200,0);
  text("5: add 0.05 to β", -275,4 * 64 - 200,0);
  text("6: subtract 0.05 from β", -275,5 * 64 - 200,0);
  text("7: reset to", -275,6 * 64 - 200,0);
  text("σ = 10, ρ = 12, β = 8/3", -275,7 * 64 - 200,0);
      fill(255);
  
}
