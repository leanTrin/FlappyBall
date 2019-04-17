class Bird {
  float y = height/2;
  float displace = 100;
  float ySpeed;
  float gravity = .5;
  float size = 50;
  boolean jump;
  boolean jumpVer = true;
  float jumpVel = 10;
  int score = 0;
  color Cmain;
  color Chighlight;
  int c1 =(int)random(0, 255);
  int c2 = (int)random(0, 255);
  int c3 = (int)random(0, 255);
  float sspeed = 1;

  Bird() {
    c1 =(int)random(0, 255);
    c2 = (int)random(0, 255);
    c3 = (int)random(0, 255);
    Cmain = color(c1, c2, c3);
    Chighlight = color(c1-50, c2-50, c3-50);
  }

  void menu() {
    this.draw();


    this.y += sspeed;
    if (this.y > width/2+20 || this.y < width/2-20) {
      sspeed *= -1;
    }
  }

  void run() {
    y += ySpeed;
    ySpeed += gravity;
    if (jump && jumpVer) {
      ySpeed = -jumpVel;
      jump = false;
      jumpVer = false;
    }
    score(pipes);
  }
  boolean hitFloor() {
    return this.y+this.size/2 > height;
  }
  boolean skyLimit() {
    return false;
  }
  boolean pipeHit(Pipes pipes) {

    if (pipes.isHit(this.displace, this.y, this.size)) {
      return true;
    }
    return false;
  }

  void score(Pipes pipes) {
    if (pipes.scored(this.displace)) {
      this.score ++;
    }
  }
  void reset() {
    y = height/2;
    displace = 100;
    gravity = .5;
    size = 50;
    jumpVer = true;
    jumpVel = 10;
    this.score = 0;
    c1 =(int)random(0, 255);
    c2 = (int)random(0, 255);
    c3 = (int)random(0, 255);
    Cmain = color(c1, c2, c3);
    Chighlight = color(c1-50, c2-50, c3-50);
  }


  void draw() {
    noStroke();
    fill(Chighlight);
    ellipse(displace-5, y+5, size, size);
    fill(Cmain);
    ellipse(displace, y, size, size);
  }
}
