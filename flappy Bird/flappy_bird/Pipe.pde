class Pipe {
  float x = width;
  float y; //230, height-20
  float w = 100;
  float h = height;
  float yDisplacement = 1000; //Easy 1000 hard 950 or less
  boolean active = true;

  Pipe() {
  }
  void display() {
    noStroke();
    rectMode(CORNER);


    fill(#327C37);
    rect(this.x-10, this.y+10, w, h);
    fill(#2ACE36);
    rect(this.x, this.y, w, h);



    fill(#327C37);
    rect(this.x-10, this.y-yDisplacement+10, w, h);
    fill(#2ACE36);
    rect(this.x, this.y-yDisplacement, w, h);
  }
  void yOpening(float y) {
    this.y = y;
  }
  void moveX(float x) {
    this.x = x;
  }
  boolean isHit(float x, float y, float w, float speed) {
    if ( (x-w/2 < (this.x + this.w) && x+w/2 > (this.x) && y-w/2 < (this.y + this.h) && y+w/2 > (this.y)) ||
      (x-w/2 < (this.x + this.w) && x+w/2 > (this.x) && y-w/2 < (this.y-yDisplacement + this.h) && y+w/2 > (this.y-yDisplacement)) ) {
      return true;
    }
    return false;
  }
}
