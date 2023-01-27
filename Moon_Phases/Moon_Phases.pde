
float moonX;
float moonY;
int thetaDeg = 0;
float thetaRad;
float radius = 200;
int moonViewFromEarthColor = 255;


void setup() {
  //frameRate(1);
  size(900, 600);

}


void draw() {
  clear();
  background(00, 0, 50);
  
  fill(0);
  noStroke();
  circle(300, 300, 150);
  
  fill(40, 122, 184);
  arc(300, 300, 150, 150, HALF_PI, 3 * HALF_PI, OPEN);
  
  noFill();
  stroke(255);
  square(600, 300, 250);
  
  thetaRad = (thetaDeg * PI) / 180;
  println(thetaRad);
  moonX = cos(thetaRad) * radius;
  moonY = -1 * sin(thetaRad) * radius;
  fill(0);
  noStroke();
  circle(moonX + 300, moonY + 300, 75);
    
  fill(254, 252, 215);
  arc(moonX + 300, moonY + 300, 75, 75, HALF_PI, 3 * HALF_PI, OPEN);


  
  if (thetaRad <= PI) {
  
  fill(254, 252, 215);
  noStroke();
  circle(600 + 250 / 2, 300 + 250 / 2, 150);
  
  
  fill(0);
  noStroke();
  arc(600 + 250 / 2, 300 + 250 / 2, 151, 151, -thetaRad, thetaRad, OPEN);
  }
  else {
  moonViewFromEarthColor = 0;
  
  fill(moonViewFromEarthColor);
  noStroke();
  circle(600 + 250 / 2, 300 + 250 / 2, 150);
  
  fill(254, 252, 215);
  noStroke();
  float thetaTemp = thetaRad - PI;
  arc(600 + 250 / 2, 300 + 250 / 2, 150, 150, -thetaTemp, thetaTemp, OPEN);
  }
  
  fill(255);
  textSize(32);
  text("View From Earth", 615, 280);
  
  thetaDeg++;
  
  if (thetaDeg == 360) {
    thetaDeg = 0;
  }
}
