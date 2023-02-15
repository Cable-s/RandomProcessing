int[] vertex = new int[6];
float X = random(0, 1000);
float Y = random(0, 1000);
void setup() {
  size(1000, 1000);
  vertex[0] = 500;
  vertex[1] = 0;
  vertex[2] = 0;
  vertex[3] = 800;
  vertex[4] = 1000;
  vertex[5] = 800;
  background(255);
}
void draw() {
  for (int i = 0; i < 1000; i++) {
    int randomVertex = (2 * floor(random(3)));
    float averageBetweemPointsX = (X + vertex[randomVertex]) / 2;
    float averageBetweemPointsY = (Y + vertex[randomVertex + 1]) / 2;
    point(averageBetweemPointsX, averageBetweemPointsY);
    X = averageBetweemPointsX;
    Y = averageBetweemPointsY;
  }
}
