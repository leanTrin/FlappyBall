void lobby() {
  background(#9347B4);

  if (exit.show_run_isclick()) {
    exit();
  }
}

void inGame() {
  background(255);
  bird.display();
  bird.update();
  append(pipes, new Pipes());
}
