
class cubeBoy {
  int speed;
  int x, y;
  float alpha;
  int base=1;
  color c= color( random(0, 255), random(0, 255), random(0, 255));
  int sizeX=int(random(20, 100));
  int sizeY=int(random(20, 100));

  cubeBoy(int s, int xpos, int ypos) {
    speed=s;
    x=xpos;
    y=ypos;
  }






  void display() {
    base+=speed;
    alpha=sin(base);
    alpha=map(alpha,-1,1,0,300);
    fill(c,alpha);
    noStroke();
    rectMode(CENTER);
    rect(x, y, sizeX, sizeY);
  }
}
