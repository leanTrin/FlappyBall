class Trees {
  float x = 100;
  float y = 100;
  float leafsize = 100;
  float woodsize = 200;
  float base;
  float toppoint;
  float woodw;


  Trees(float base, float toppoint) {
    this.base = base;
    this.toppoint = toppoint;
    this.randomize();
    this.x = (int) random(0, width*2);
  }

  void show() {
    stroke(0);
    //wood
    rectMode(CORNER);
    fill(#B27820);
    this.woodsize = this.base - this.y;
    rect(this.x-woodw/2, this.y, woodw, this.woodsize);

    //leaf
    rectMode(CENTER);
    fill(#22B220);
    rect(this.x, this.y, this.leafsize, this.leafsize);
  }
  void randomize() {
    this.y = (int) random(this.toppoint, this.base -100);
    this.leafsize = random(50, 100);
    this.woodw = random(10, 20);
    this.x = (int) random(width+this.leafsize, width*3);
  }

  void moveX(float x) {

    this.x = x;
  }
}
