
float incrementY;
float incrementX;
float OffsetY = 0; 
float OffsetX = 0; 
float[] pointsX = new float[1000];
float[] pointsY = new float[1000];
int i = 0;

void setup() {
  frameRate(60);
  size(1000, 600);


}


void draw() {
  


    float Ylevel = noise(OffsetY) * 200;
    float Xlevel = noise(OffsetX) * 4;
    OffsetY += incrementY;
    OffsetX += incrementX;
    float iTemp = i;
    
    point(iTemp + Xlevel, Ylevel + 200);  
    
    pointsX[i] = iTemp + Xlevel;
    pointsY[i] = Ylevel + 200;
    
    if (i < 250) {
    incrementY = 0.01;
    incrementX = 1;
    }
    if (i > 250 && i < 500) {
    incrementY = 0.01;
    incrementX = 0.001;
    }
    if (i > 500 && i < 750) {
    incrementY = 0.05;
    incrementX = 0.005;
    }
    if (i > 750) {
    incrementY = 0.001;
    incrementX = 0.0001;
    }
   
    if (i > 0) {
      line(pointsX[i], pointsY[i], pointsX[i-1], pointsY[i-1]);
    }
    
    i++;
    
    if (i == 1000) {
      noLoop();
      println("done");
    }
  }
  
