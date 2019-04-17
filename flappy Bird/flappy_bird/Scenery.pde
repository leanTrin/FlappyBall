class Scenery {
  float base = height-10;
  float toppoint = 500;
  Trees[] trees = new Trees[30];
  float speed = 3;
  float sunY = 100;
  float sunX = width;
  Scenery() {
    for (int i = 0; i < trees.length; i++) {
      trees[i] = new Trees(this.base, this.toppoint);
    }
  }

  void show_move() {
    fill(255);
    sunX -= .1;
    rectMode(CENTER);
    rect(sunX, sunY, 50, 50);
    for (Trees t : this.trees) {
      
      t.show();
      t.x -= speed;

      if (t.x < -t.leafsize) {
        t.randomize();
      }
    }
    rectMode(CORNER);
    fill(#20B23C);
    rect(0, base, width, height);
  }
}
