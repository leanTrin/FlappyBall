/*
TODO:
 - create the art
 - score functionality
 - animations
 - backdrop
 
 */
Bird b;
Pipes pipes;
boolean inGame;
boolean gameBuff;
int scores = 0;

Buttons play;
Buttons exit;
Scenery scene;

void setup() {
  size(600, 800);
  b = new Bird();
  pipes = new Pipes();
  exit = new Buttons("Exit", width/2, height-100, width/2, 90, color(#FF6F84), color(#F52F4D));
  scene = new Scenery();
  smooth();
}

void draw() {

  if (!inGame) {
    background(#95C2FF);
    //scene.show_move();
    showScore(scores);
    if (exit.show_run_isclick()) {
      exit();
    }

    b.menu();
  } else {
    /*********************** In Game ************************************************************/
    background(#95C2FF);
    //scene.show_move();
    b.draw();
    b.run();
    pipes.display();
    pipes.run();



    if (b.hitFloor() || b.skyLimit() || b.pipeHit(pipes)) {
      scores = b.score;
      inGame = false;
      b.reset();
      pipes.reset();
    } else {
    }
    showScore(b.score);
  }
}
void showScore(int scr) {

  textAlign(CENTER);
  textSize(50);
  fill(100);
  text(scr, width/2-5, 100+5);
  fill(255);
  text(scr, width/2, 100);
}
void keyPressed() {
  if (!inGame && key == ' ') {
    inGame = true;
  }
  if (key == ' ') {
    b.jump = true;
  }
}
void keyReleased() {
  if (key == ' ') {
    b.jumpVer = true;
    b.jump = false;
  }
}
