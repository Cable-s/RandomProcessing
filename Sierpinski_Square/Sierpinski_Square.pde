int[] vertex = new int[8];
int tempVertex;
float X = random(0, 1000);
float Y = random(0, 1000);
void setup() {
  size(1000, 1000);
  vertex[0] = 000;
  vertex[1] = 000;
  
  vertex[2] = 1000;
  vertex[3] = 1000;
  
  vertex[4] = 1000;
  vertex[5] = 00;
  
  vertex[6] = 000;
  vertex[7] = 1000;
  
  background(255);
}
void draw() {
  for (int i = 0; i < 1000; i++) {
    int randomVertex = (2 * floor(random(4)));
    println(randomVertex);
    if (randomVertex == tempVertex) {
      if (randomVertex == 6) {
        randomVertex -= 2;
      }
      else {
        randomVertex += 2;
      }
    }
    float averageBetweemPointsX = (X + vertex[randomVertex]) / 2;
    float averageBetweemPointsY = (Y + vertex[randomVertex + 1]) / 2;
    point(averageBetweemPointsX, averageBetweemPointsY);
    X = averageBetweemPointsX;
    Y = averageBetweemPointsY;
    tempVertex = randomVertex;
  }
}
