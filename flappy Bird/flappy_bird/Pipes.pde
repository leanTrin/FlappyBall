class Pipes {
  float x = 500;
  float xDisplacement = 350;
  float y; //230, height-20 // Where the hole is
  float speed = 5;

  Pipe[] pipes = new Pipe[2];


  Pipes() {
    for (int i = 0; i < pipes.length; i++) {
      pipes[i] = new Pipe();
    }
    reset();
  }
  void reset() {
    float i = width;
    for (Pipe p : pipes) {
      p.yOpening((int) random(230, height-20));
      p.x = i;
      i += xDisplacement;
      p.active = true;
    }
  }
  void run() {
    for (Pipe p : pipes) {
      p.x -= speed;
      if (p.x < -p.w) {
        p.active = true;
        p.yOpening((int) random(230, height-20));
        p.x = width;
      }
    }
  }

  boolean isHit(float xx, float yy, float ww) {
    for (Pipe p : pipes) {
      if (p.isHit(xx, yy, ww, this.speed)) {
        return true;
      }
    }
    return false;
  }
  boolean scored(float x) {
    for (Pipe p : pipes) {
      if (x > p.x && p.active) {
        p.active = false;
        return true;
      }
    }
    return false;
  }




  void display() {
    for (Pipe p : pipes) {
      p.display();
    }
  }
}
