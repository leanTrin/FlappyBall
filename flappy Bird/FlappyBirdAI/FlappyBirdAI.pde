
int gameMode = 1;

Bird bird;

Pipes[] pipes;
Buttons exit;
void setup() {
  size(600, 800);

  bird = new Bird();

  exit = new Buttons("Exit", width/2, height-100, 200, 95, 52, color(#FF6262), color(#B44747));
  pipes.append(new Pipes());
}
void draw() {
  switch(gameMode) {
  case 0:
    lobby();
    break;
  case 1:
    inGame();
    break;
  }
}


void keyPressed() {
  if (gameMode == 1 && key == ' ') {
    bird.jump = true;
  }
}

void keyReleased() {

  if (key == ' ') {
    bird.jumpVerify = true;
    bird.jump = false;
  }
}
