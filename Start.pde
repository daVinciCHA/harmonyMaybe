int startRectX=156;
int startRectY=57;
color startColor;
color beforeStart=color(254, 58, 157);
color readyStart=color(157, 58, 254);

boolean firstPress=false;
boolean isPress=false;
boolean isStart=false;

void startGame() {

  fill(0);
  rect(0, 0, 800, 600);
  rectMode(CENTER);
  fill(startColor);
  startColor=beforeStart;
  rect(400, 450, startRectX, startRectY);
  fill(255);
  textSize(40);
  textAlign(CENTER, CENTER);
  text("START", 400, 450);
  //题目
  textSize(80);
  text("Harmony Maybe",400,150);
  //说明
  textSize(30);
  text("Click mouse to meet others",400,350);
  textSize(20);
  text("Created by Kevin Du",600,539);

  if (firstPress==true) {
    beforePlay();
  }

  if ( mouseX<=(400+startRectX/2) &&
    mouseX>=(400-startRectX/2) &&
    mouseY<=(450+startRectY/2) &&
    mouseY>=(450-startRectY/2)    ) {
    startColor=readyStart;
    if ( mousePressed==true) {
      firstPress=true;
      
    }
  }
}

void beforePlay(){
  fill(0);
  rectMode(CORNER);
  rect(0,0,800,600);
  rectMode(CENTER);
  fill(startColor);
  startColor=beforeStart;
  rect(400, 250, startRectX, startRectY);
  fill(255);
  textSize(40);
  textAlign(CENTER, CENTER);
  text("OK", 400, 250);
  fill(200);
  text("20 times to click. Good luck! :-P You will play 3 minutes and only have 20 times to click. Good luck! :-P",1000,482);
  text("You will play 3 minutes and only have 20 times to click. Good luck! :-P",300,436);
  text("You will play 3 minutes and only have 20 times to click. Good luck! :-P You will play 3 minutes and only",-200,388);
  
  if (isPress==true) {
    bigMine();
  }
  
  if ( mouseX<=(400+startRectX/2) &&
    mouseX>=(400-startRectX/2) &&
    mouseY<=(250+startRectY/2) &&
    mouseY>=(250-startRectY/2)    ) {
    startColor=readyStart;
    if ( mousePressed==true) {
      isPress=true;
      isStart=true;
    }
  }
}
  
  
  
  
  
  
