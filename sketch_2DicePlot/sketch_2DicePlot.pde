int bar1 = 0;
int bar2 = 0;
int bar3 = 0;
int bar4 = 0;
int bar5 = 0;
int bar6 = 0;
int bar7 = 0;
int bar8 = 0;
int bar9 = 0;
int bar10 = 0;
int bar11 = 0;

float bar1cent;
float bar2cent;
float bar3cent;
float bar4cent;
float bar5cent;
float bar6cent;
float bar7cent;
float bar8cent;
float bar9cent;
float bar10cent;
float bar11cent;

int scale = 1550;
float temp = 0;

void setup() {
  frameRate(1);
  size(900, 600);
}

void draw() {
  clear();
  textSize(20);
  fill(255);
  text(2, 350, 590);
  text(3, 395, 590);
  text(4, 440, 590);
  text(5, 490, 590);
  text(6, 530, 590);
  text(7, 580, 590);
  text(8, 620, 590);
  text(9, 670, 590);
  text(10, 720, 590);
  text(11, 770, 590);
  text(12, 820, 590);
  
  
  int diceRoll = floor(random(6)) + 1;
  int diceRoll2 = floor(random(6)) + 1;
  if (diceRoll == 1) {
    fill(255);
    rect(50, 250, 150, 150, 28);
    fill(0);
    circle(125, 325, 25);
  }
  if (diceRoll == 2) {
    fill(255);
    rect(50, 250, 150, 150, 28);
    fill(0);
    circle(84, 291, 25);
    circle(165, 359, 25);
  }
  if (diceRoll == 3) {
    fill(255);
    rect(50, 250, 150, 150, 28);
    fill(0);
    circle(125, 325, 25);
    circle(84, 291, 25);
    circle(165, 359, 25);
  }
  if (diceRoll == 4) {
    fill(255);
    rect(50, 250, 150, 150, 28);
    fill(0);
    circle(84, 291, 25);
    circle(84, 359, 25);
    circle(165, 291, 25);
    circle(165, 359, 25);
  }
  if (diceRoll == 5) {
    fill(255);
    rect(50, 250, 150, 150, 28);
    fill(0);
    circle(125, 325, 25);
    circle(84, 291, 25);
    circle(84, 359, 25);
    circle(165, 291, 25);
    circle(165, 359, 25);
  }
  if (diceRoll == 6) {
    fill(255);
    rect(50, 250, 150, 150, 28);
    fill(0);
    circle(84, 291, 25);
    circle(84, 359, 25);
    circle(84, 325, 25);
    circle(165, 325, 25);
    circle(165, 359, 25);
    circle(165, 291, 25);
  }//34
  
  if (diceRoll2 == 1) {
    fill(255);
    rect(150, 400, 150, 150, 28);
    fill(0);
    circle(225, 475, 25);
  }
  if (diceRoll2 == 2) {
    fill(255);
    rect(150, 400, 150, 150, 28);
    fill(0);
    circle(185, 435, 25);
    circle(265, 515, 25);
  }
  if (diceRoll2 == 3) {
    fill(255);
    rect(150, 400, 150, 150, 28);
    fill(0);
    circle(225, 475, 25);
    circle(185, 435, 25);
    circle(265, 515, 25);
  }
  if (diceRoll2 == 4) {
    fill(255);
    rect(150, 400, 150, 150, 28);
    fill(0);
    circle(185, 435, 25);
    circle(185, 515, 25);
    circle(265, 435, 25);
    circle(265, 515, 25);
  }
  if (diceRoll2 == 5) {
    fill(255);
    rect(150, 400, 150, 150, 28);
    fill(0);
    circle(225, 475, 25);
    circle(185, 435, 25);
    circle(185, 515, 25);
    circle(265, 435, 25);
    circle(265, 515, 25);
  }
  if (diceRoll2 == 6) {
    fill(255);
    rect(150, 400, 150, 150, 28);
    fill(0);
    circle(185, 435, 25);
    circle(185, 515, 25);
    circle(185, 475, 25);
    circle(265, 475, 25);
    circle(265, 435, 25);
    circle(265, 515, 25);
  }
  
  
  int add = diceRoll + diceRoll2;
  if (add == 2) {
    bar1++;
  }
  if (add == 3) {
    bar2++;
  }
  if (add == 4) {
    bar3++;
  }
  if (add == 5) {
    bar4++;
  }
  if (add == 6) {
    bar5++;
  }
  if (add == 7) {
    bar6++;
  }
  if (add == 8) {
    bar7++;
  }
  if (add == 9) {
    bar8++;
  }
  if (add == 10) {
    bar9++;
  }
  if (add == 11) {
    bar10++;
  }
  if (add == 12) {
    bar11++;
  }
  
  //if (bar6 == 50) {
  //scale = 1000;
  //}
  //if (bar6 == 100) {
  //scale = 1500;
  //}
  
  textSize(200);
  fill(255);
  text(add, 110, 220);
  
  bar1cent = float(bar1) / float(bar1 + bar2 + bar3 + bar4 + bar5 + bar6 + bar7 + bar8 + bar9 + bar10 + bar11);
  bar2cent = float(bar2) / float(bar1 + bar2 + bar3 + bar4 + bar5 + bar6 + bar7 + bar8 + bar9 + bar10 + bar11);
  bar3cent = float(bar3) / float(bar1 + bar2 + bar3 + bar4 + bar5 + bar6 + bar7 + bar8 + bar9 + bar10 + bar11);
  bar4cent = float(bar4) / float(bar1 + bar2 + bar3 + bar4 + bar5 + bar6 + bar7 + bar8 + bar9 + bar10 + bar11);
  bar5cent = float(bar5) / float(bar1 + bar2 + bar3 + bar4 + bar5 + bar6 + bar7 + bar8 + bar9 + bar10 + bar11);
  bar6cent = float(bar6) / float(bar1 + bar2 + bar3 + bar4 + bar5 + bar6 + bar7 + bar8 + bar9 + bar10 + bar11);
  bar7cent = float(bar7) / float(bar1 + bar2 + bar3 + bar4 + bar5 + bar6 + bar7 + bar8 + bar9 + bar10 + bar11);
  bar8cent = float(bar8) / float(bar1 + bar2 + bar3 + bar4 + bar5 + bar6 + bar7 + bar8 + bar9 + bar10 + bar11);
  bar9cent = float(bar9) / float(bar1 + bar2 + bar3 + bar4 + bar5 + bar6 + bar7 + bar8 + bar9 + bar10 + bar11);
  bar10cent = float(bar10) / float(bar1 + bar2 + bar3 + bar4 + bar5 + bar6 + bar7 + bar8 + bar9 + bar10 + bar11);
  bar11cent = float(bar11) / float(bar1 + bar2 + bar3 + bar4 + bar5 + bar6 + bar7 + bar8 + bar9 + bar10 + bar11);
  
  fill(255);
  rect(330, 575, 45, bar1cent * -scale);
  rect(375, 575, 45, bar2cent * -scale);
  rect(420, 575, 45, bar3cent * -scale);
  rect(465, 575, 45, bar4cent * -scale);
  rect(510, 575, 45, bar5cent * -scale);
  rect(555, 575, 45, bar6cent * -scale);
  rect(600, 575, 45, bar7cent * -scale);
  rect(645, 575, 45, bar8cent * -scale);
  rect(690, 575, 45, bar9cent * -scale);
  rect(735, 575, 45, bar10cent * -scale);
  rect(780, 575, 45, bar11cent * -scale);
  
  fill(255);
  textSize(15);
  text(bar1, 350, 530 - (bar1cent * scale));
  text(bar2, 395, 530 - (bar2cent * scale));
  text(bar3, 440, 530 - (bar3cent * scale));
  text(bar4, 485, 530 - (bar4cent * scale));
  text(bar5, 530, 530 - (bar5cent * scale));
  text(bar6, 575, 530 - (bar6cent * scale));
  text(bar7, 620, 530 - (bar7cent * scale));
  text(bar8, 665, 530 - (bar8cent * scale));
  text(bar9, 710, 530 - (bar9cent * scale));
  text(bar10, 755, 530 - (bar10cent * scale));
  text(bar11, 800, 530 - (bar11cent * scale));
    
  textSize(15);
  text(bar1cent, 330, 560 - (bar1cent * scale));
  text(bar2cent, 375, 560 - (bar2cent * scale));
  text(bar3cent, 420, 560 - (bar3cent * scale));
  text(bar4cent, 465, 560 - (bar4cent * scale));
  text(bar5cent, 510, 560 - (bar5cent * scale));
  text(bar6cent, 555, 560 - (bar6cent * scale));
  text(bar7cent, 600, 560 - (bar7cent * scale));
  text(bar8cent, 645, 560 - (bar8cent * scale));
  text(bar9cent, 690, 560 - (bar9cent * scale));
  text(bar10cent, 735, 560 - (bar10cent * scale));
  text(bar11cent, 780, 560 - (bar11cent * scale));
}
