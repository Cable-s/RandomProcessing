
int r;
int a;
int b;
int coprimeCount = 0;
int total = 0;
float piEstimate;

void setup() {
  size(400, 400);
}

int gcd(int a, int b) {
  if (b > a) {
      int temp = a;
      a = b;
      b = temp;
  }
  r = a % b;
  if (r == 0) {
    return b;
  }
  else {
   return gcd(b, r);
  }
  
}

void draw() {
  for (int i = 0; i < 500; i++) {
    a = int(random(1, 99999));
    b = int(random(1, 99999));

    if (gcd(a, b) == 1) {
      coprimeCount++;
    }
    total++;
    
    float piEstimateP1 = 6 * total;
    float piEstimateP2 = piEstimateP1 / coprimeCount;
    piEstimate = sqrt(piEstimateP2);
    
    if (total == 1000000) {
      noLoop();
      println("done");
      break;
    }
    }

  background(60);
  textSize(16);
  fill(255);
  text("Estimate of Pi:", 50, 150);
  textSize(64);
  fill(255);
  String PiE = nf(piEstimate, 1, 10);
  text(PiE, 25, 200); 
  textSize(20);
  fill(255);
  text("Pi for reference: 3.1415926535", 75, 250);
  textSize(16);
  fill(255);
  text("Progress: " + total + "/ 1000000", 125, 300); 


}
