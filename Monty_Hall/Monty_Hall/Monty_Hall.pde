boolean[] doors = new boolean[3];
boolean pickTemp;
int stage = 1;
int firstPick;
void setup() {
  //frameRate(60);
//  size(800, 800);
  doors[0] = false;
  doors[1] = false;
  doors[2] = false;
  int win = floor(random(3));
  doors[win] = true;
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

}


void keyPressed() {
  if (stage == 1) {
    if (key == '1') {
      firstPick = 0;
      if (doors[firstPick] == true) {
        if (firstPick == 2) {
          println("  ");
          println("door " +  (floor(random(2)) + 1) + " is " + doors[firstPick - 1]);
          doors = removeByIndex(doors , (firstPick-1));
          pickTemp = true;
        }
        else if (firstPick < 2){
          println("  ");
          println("door " + (floor(random(2)) + 1) + " is " + doors[firstPick + 1]);
          doors = removeByIndex(doors , (firstPick+1));
          pickTemp = true;
        }
      }
      else if (doors[firstPick] == false) {
        for (int i = 0; i < 3; i++) {
          if (i != firstPick && doors[i] != true) {
            println("  ");
            println("door " + (i+1) + " is " + doors[i]);
            doors = removeByIndex(doors , i);
            pickTemp = false;
            break;
          }
        }
      }
    }
    if (key == '2') {
      firstPick = 1;
      if (doors[firstPick] == true) {
        if (firstPick == 2) {
          println("  ");
          println("door " + (floor(random(2)) + 1) + " is " + doors[firstPick - 1]);
          doors = removeByIndex(doors , (firstPick-1));
          pickTemp = true;
        }
        else if (firstPick < 2){
          println("  ");
          println("door " + (floor(random(2)) + 1) + " is " + doors[firstPick + 1]);
          doors = removeByIndex(doors , (firstPick+1));
          pickTemp = true;
        }
      }
      else if (doors[firstPick] == false) {
        for (int i = 0; i < 3; i++) {
          if (i != firstPick && doors[i] != true) {
            println("  ");
            println("door " + (i+1) + " is " + doors[i]);
            doors = removeByIndex(doors , i);
            pickTemp = false;
            break;
          }
        }
      }
    }
    if (key == '3') {
      firstPick = 2;
      if (doors[firstPick] == true) {
        if (firstPick == 2) {
          println("  ");
          println("door " + (floor(random(2)) + 1) + " is " + doors[firstPick - 1]);
          doors = removeByIndex(doors , (firstPick-1));
          pickTemp = true;
        }
        else if (firstPick < 2){
          println("  ");
          println("door " + (floor(random(2)) + 1) + " is " + doors[firstPick + 1]);
          doors = removeByIndex(doors , (firstPick+1));
          pickTemp = true;
        }
      }
      else if (doors[firstPick] == false) {
        for (int i = 0; i < 3; i++) {
          if (i != firstPick && doors[i] != true) {
            println("  ");
            println("door " + (i+1) + " is " + doors[i]);
            doors = removeByIndex(doors , i);
            pickTemp = false;
            break;
          }
        }
      }
    }
    println("do you want to switch or stay");
    println("1 to switch");
    println("2 to stay");
    //println(doors);
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
    if (key == '1') {
      if (doors[firstPick] == false) {
        println("  ");
        println("You Win");
      }
      else {
        println("  ");
        println("You Lose");
      }
    }
    if (key == '2') {
      if (doors[firstPick] == true) {
        println("  ");
        println("You Win");
      }
      else {
        println("  ");
        println("You Lose");
      }
    }
  }
  stage++;
}
