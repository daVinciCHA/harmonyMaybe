import processing.sound.*;
SoundFile s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,
          s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21;

int gradual=0;
int pGradual=0;

void setup() {
  size(800, 600);
  frameRate(60);
  smooth();
  s1 = new SoundFile(this, "1.wav");
  s2 = new SoundFile(this, "2.wav");
  s3 = new SoundFile(this, "3.wav");
  s4 = new SoundFile(this, "4.wav");
  s5 = new SoundFile(this, "5.wav");
  s6 = new SoundFile(this, "6.wav");
  s7 = new SoundFile(this, "7.wav");
  s8 = new SoundFile(this, "8.wav");
  s9 = new SoundFile(this, "9.wav");
  s10 = new SoundFile(this, "10.wav");
  s11 = new SoundFile(this, "11.wav");
  s12 = new SoundFile(this, "12.wav");
  s13 = new SoundFile(this, "13.wav");
  s14 = new SoundFile(this, "14.wav");
  s15 = new SoundFile(this, "15.wav");
  s16 = new SoundFile(this, "16.wav");
  s17 = new SoundFile(this, "17.wav");
  s18 = new SoundFile(this, "18.wav");
  s19 = new SoundFile(this, "19.wav");
  s20 = new SoundFile(this, "20.wav");
  s21 = new SoundFile(this, "21.wav");
}

void draw() {
  startGame();
  cubeDisplay();
  timer();
  println(ml);
}
int min=0;
int max=300;
void bigMine() {
  if (gradual<=min || gradual>pGradual) {
    pGradual=gradual;
    gradual++;
  }
  if (gradual>=max || gradual<pGradual) {
    pGradual=gradual;
    gradual--;
  }
  rectMode(CORNER);
  fill(gradual, gradual, gradual);
  rect(0, 0, 800, 600);

  if (ml>=60000 && ml<120000) {
    min=50;
    max=500;
  } else if (ml>=120000 && ml<180000) {
    min=-500;
    max=100;
  }
}

void mousePressed() {
  //if(firstPress==true){
  //  s2.play();
  //}
  if (isPress==true) {
    count++;
    mouseJudgement();
  }
}

int m=0;
int ml=0;
void timer() {
  if (isStart==true) {
    m=millis();
    isStart=false;
  }
  ml=millis()-m;
  if (ml>=180000 && m!=0) {
    ending();
    noLoop();
  }
}

void ending() {
  fill(0);
  rectMode(CORNER);
  rect(0, 0, 800, 600);
  textSize(40);
  fill(255);
  text("Thanks for playing", 400, 300);
}
