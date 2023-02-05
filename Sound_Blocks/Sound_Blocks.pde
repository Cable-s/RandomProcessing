import processing.sound.*;
SoundFile file0;
SoundFile file1;
SoundFile file2;
SoundFile file3;
SoundFile file4;
SoundFile file5;
SoundFile file6;
SoundFile file7;
SoundFile file8;
SoundFile file9;
SoundFile file10;
SoundFile file11;
SoundFile file12;
SoundFile file13;
SoundFile file14;

float x0 = 0;
float x1 = 0;
float x2 = 0;
float x3 = 0;
float x4 = 0;
float x5 = 0;
float x6 = 0;
float x7 = 0;
float x8 = 0;
float x9 = 0;
float x10 = 0;
float x11 = 0;
float x12 = 0;
float x13 = 0;
float x14 = 0;
boolean direction0 = true;
boolean direction1 = true;
boolean direction2 = true;
boolean direction3 = true;
boolean direction4 = true;
boolean direction5 = true;
boolean direction6 = true;
boolean direction7 = true;
boolean direction8 = true;
boolean direction9 = true;
boolean direction10 = true;
boolean direction11 = true;
boolean direction12 = true;
boolean direction13 = true;
boolean direction14 = true;



void setup() {
  size(1000, 830);
  file0 = new SoundFile(this, "sound0.mp3");
  file1 = new SoundFile(this, "sound1.mp3");
  file2 = new SoundFile(this, "sound2.mp3");
  file3 = new SoundFile(this, "sound3.mp3");
  file4 = new SoundFile(this, "sound4.mp3");
  file5 = new SoundFile(this, "sound5.mp3");
  file6 = new SoundFile(this, "sound6.mp3");
  file7 = new SoundFile(this, "sound7.mp3");
  file8 = new SoundFile(this, "sound8.mp3");
  file9 = new SoundFile(this, "sound9.mp3");
  file10 = new SoundFile(this, "sound10.mp3");
  file11 = new SoundFile(this, "sound11.mp3");
  file12 = new SoundFile(this, "sound12.mp3");
  file13 = new SoundFile(this, "sound13.mp3");
  file14 = new SoundFile(this, "sound14.mp3");
}

void draw() {
  clear();
  background(0);
  fill(#ab000e);
  rect(x0 * 1.0, 5, 100, 50);
  fill(#db0012);
  rect(x1 * 1.1, 60, 100, 50);
  fill(#ea1f00);
  rect(x2 * 1.2, 115, 100, 50);
  fill(#ff4101);
  rect(x3 * 1.3, 170, 100, 50);
  fill(#ffbc00);
  rect(x4 * 1.4, 225, 100, 50);
  fill(#ffed00);
  rect(x5 * 1.5, 280, 100, 50);
  fill(#9bf906);
  rect(x6 * 1.6, 335, 100, 50);
  fill(#66ff00);
  rect(x7 * 1.7, 390, 100, 50);
  fill(#00ff94);
  rect(x8 * 1.8, 445, 100, 50);
  fill(#00ffe2);
  rect(x9 * 1.9, 500, 100, 50);
  fill(#00e5ff);
  rect(x10 * 2.0, 555, 100, 50);
  fill(#0085ff);
  rect(x11 * 2.1, 610, 100, 50);
  fill(#0018ff);
  rect(x12 * 2.2, 665, 100, 50);
  fill(#4c00ff);
  rect(x13 * 2.3, 720, 100, 50);
  fill(#c800ff);
  rect(x14 * 2.4, 775, 100, 50);
  if (direction0 == true) {
    x0++;
  }
  else {
    x0--;
  }
  if (direction1 == true) {
    x1++;
  }
  else {
    x1--;
  }
  if (direction2 == true) {
    x2++;
  }
  else {
    x2--;
  }
  if (direction3 == true) {
    x3++;
  }
  else {
    x3--;
  }
  if (direction4 == true) {
    x4++;
  }
  else {
    x4--;
  }
  if (direction5 == true) {
    x5++;
  }
  else {
    x5--;
  }
  if (direction6 == true) {
    x6++;
  }
  else {
    x6--;
  }
  if (direction7 == true) {
    x7++;
  }
  else {
    x7--;
  }
  if (direction8 == true) {
    x8++;
  }
  else {
    x8--;
  }
  if (direction9 == true) {
    x9++;
  }
  else {
    x9--;
  }
  if (direction10 == true) {
    x10++;
  }
  else {
    x10--;
  }
  if (direction11 == true) {
    x11++;
  }
  else {
    x11--;
  }
  if (direction12 == true) {
    x12++;
  }
  else {
    x12--;
  }
  if (direction13 == true) {
    x13++;
  }
  else {
    x13--;
  }
  if (direction14 == true) {
    x14++;
  }
  else {
    x14--;
  }
  if (x0 >= 900) {
    direction0 = false;
    file0.play();
  }
  if (x0 <= 0) {
    direction0 = true;
    file0.play();
  }
  if (x1 >= 900 / 1.1) {
    direction1 = false;
    file1.play();
  }
  if (x1 <= 0) {
    direction1 = true;
    file1.play();
  }
    if (x2 >= 900 / 1.2) {
    direction2 = false;
    file2.play();
  }
  if (x2 <= 0) {
    direction2 = true;
    file2.play();
  }
    if (x3 >= 900 / 1.3) {
    direction3 = false;
    file3.play();
  }
  if (x3 <= 0) {
    direction3 = true;
    file3.play();
  }
    if (x4 >= 900 / 1.4) {
    direction4 = false;
    file4.play();
  }
  if (x4 <= 0) {
    direction4 = true;
    file4.play();
  }
    if (x5 >= 900 / 1.5) {
    direction5 = false;
    file5.play();
  }
  if (x5 <= 0) {
    direction5 = true;
    file5.play();
  }
    if (x6 >= 900 / 1.6) {
    direction6 = false;
    file6.play();
  }
  if (x6 <= 0) {
    direction6 = true;
    file6.play();
  }
    if (x7 >= 900 / 1.7) {
    direction7 = false;
    file7.play();
  }
  if (x7 <= 0) {
    direction7 = true;
    file7.play();
  }
    if (x8 >= 900 / 1.8) {
    direction8 = false;
    file8.play();
  }
  if (x8 <= 0) {
    direction8 = true;
    file8.play();
  }
    if (x9 >= 900 / 1.9) {
    direction9 = false;
    file9.play();
  }
  if (x9 <= 0) {
    direction9 = true;
    file9.play();
  }
    if (x10 >= 900 / 2.0) {
    direction10 = false;
    file10.play();
  }
  if (x10 <= 0) {
    direction10 = true;
    file10.play();
  }
    if (x11 >= 900 / 2.1) {
    direction11 = false;
    file11.play();
  }
  if (x11 <= 0) {
    direction11 = true;
    file11.play();
  }
    if (x12 >= 900 / 2.2) {
    direction12 = false;
    file12.play();
  }
  if (x12 <= 0) {
    direction12 = true;
    file12.play();
  }
    if (x13 >= 900 / 2.3) {
    direction13 = false;
    file13.play();
  }
  if (x13 <= 0) {
    direction13 = true;
    file13.play();
  }
    if (x14 >= 900 / 2.4) {
    direction14 = false;
    file14.play();
  }
  if (x14 <= 0) {
    direction14 = true;
    file14.play();
  }
}
