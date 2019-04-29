class Buttons {
  float x, y, w, h;
  String text;
  color Cmain, Chighlight;
  float textsize;

  Buttons(String text, float x, float y, float w, float h, float textsize, color Cmain, color Chighlight) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.text = text;
    this.Cmain = Cmain;
    this.Chighlight = Chighlight;
    this.textsize = textsize;
  }

  boolean show_run_isclick() {
    noStroke();
    rectMode(CENTER);
    fill(this.Cmain);
    if ( (mouseX < this.x+this.w/2 && mouseX > this.x-this.w/2) &&
      (mouseY < this.y +this.h/2 && mouseY > this.y-this.h/2) ) {
      fill(this.Chighlight);
    }
    rect(this.x, this.y, this.w, this.h);
    textAlign(CENTER);
    fill(this.Chighlight);
    if ( (mouseX < this.x+this.w/2 && mouseX > this.x-this.w/2) &&
      (mouseY < this.y +this.h/2 && mouseY > this.y-this.h/2) ) {
      fill(this.Cmain);
    }
    textSize(this.textsize);
    text(this.text, this.x, this.y+10);
    
    if ( (mouseX < this.x+this.w/2 && mouseX > this.x-this.w/2) &&
      (mouseY < this.y +this.h/2 && mouseY > this.y-this.h/2) && mousePressed) {
        return true;
    }
    return false;
  }
  
}
