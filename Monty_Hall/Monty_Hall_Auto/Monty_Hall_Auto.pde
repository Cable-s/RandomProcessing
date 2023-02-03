boolean[] doors = new boolean[3];
boolean pickTemp;
int stage = 1;
int firstPick;
float totalPlays = 0;
float totalWins = 0;
void setup() {
  frameRate(60);
  size(800, 800);
  println("Chose a door");
  println("[1] Door1");
  println("[2] Door2");
  println("[3] Door3");
}
boolean[] removeByIndex(boolean[] array, int index) {
  int index2 = array.length-1;
  boolean old = array[index];
  array[index] = array[index2];
  array[index2] = old;
  array = shorten(array);
  return array;
}
void draw() {
int randomDoor = floor(random(3) + 1);
for (int stage = 1; stage < 3; stage++) {
  if (stage == 1) {
      doors = new boolean[3];
      doors[0] = false;
      doors[1] = false;
      doors[2] = false;
      int win = floor(random(3));
      doors[win] = true;
      if (randomDoor == 1) {
        firstPick = 0;
        if (doors[firstPick] == true) {
          if (firstPick == 2) {
            doors = removeByIndex(doors , (firstPick-1));
            pickTemp = true;
          }
          else if (firstPick < 2){
            doors = removeByIndex(doors , (firstPick+1));
            pickTemp = true;
          }
        }
        else if (doors[firstPick] == false) {
          for (int i = 0; i < 3; i++) {
            if (i != firstPick && doors[i] != true) {
              doors = removeByIndex(doors , i);
              pickTemp = false;
              break;
            }
          }
        }
      }
      if (randomDoor == 2) {
        firstPick = 1;
        if (doors[firstPick] == true) {
          if (firstPick == 2) {
            doors = removeByIndex(doors , (firstPick-1));
            pickTemp = true;
          }
          else if (firstPick < 2){
            doors = removeByIndex(doors , (firstPick+1));
            pickTemp = true;
          }
        }
        else if (doors[firstPick] == false) {
          for (int i = 0; i < 3; i++) {
            if (i != firstPick && doors[i] != true) {
              doors = removeByIndex(doors , i);
              pickTemp = false;
              break;
            }
          }
        }
      }
      if (randomDoor == 3) {
        firstPick = 2;
        if (doors[firstPick] == true) {
          if (firstPick == 2) {
            doors = removeByIndex(doors , (firstPick-1));
            pickTemp = true;
          }
          else if (firstPick < 2){
            doors = removeByIndex(doors , (firstPick+1));
            pickTemp = true;
          }
        }
        else if (doors[firstPick] == false) {
          for (int i = 0; i < 3; i++) {
            if (i != firstPick && doors[i] != true) {
              doors = removeByIndex(doors , i);
              pickTemp = false;
              break;
            }
          }
        }
      }
    }
    if (stage == 2) {
      if (pickTemp == false) {
        for (int i = 0; i < 2; i++) {
          if (doors[i] == false) {
            firstPick = i;
          }
        }
      }
      else if (pickTemp == true) {
        for (int i = 0; i < 2; i++) {
          if (doors[i] == true) {
            firstPick = i;
          }
        }
      }
        if (doors[firstPick] == false) {
          totalPlays++;
          totalWins++;
          println(totalPlays);
          println(totalWins);
          println("         ");
        }
        else {
          totalPlays++;

        }
      }
    }
    float PercentOfGamesWon = (totalWins / totalPlays) * 100;
    float PercentOfGamesLost = 100 - PercentOfGamesWon;
    float AngleOfWins = (2 * PI) * (PercentOfGamesWon / 100);
    clear();
    fill(255, 0, 0);
    arc(400, 400, 600, 600, 0, 2*PI);
    fill(0, 255, 0);
    arc(400, 400, 600, 600, 0, AngleOfWins);
    fill(255);
    textSize(16);
    text("Total Wins:" + totalWins ,100, 700);
    text("Total Plays:" + totalPlays ,100, 725);
    fill(0);
    textSize(16);
    text(floor(PercentOfGamesWon) + "%" ,300, 600);
    text(ceil(PercentOfGamesLost) + "%",550, 350);
  }
