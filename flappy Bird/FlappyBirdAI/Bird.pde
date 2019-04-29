class Bird {
  float x,y,w;
  float gravity = .5;
  float ySpeed;
  
  boolean jump;
  boolean jumpVerify = true;
  float jumpVel = 10;
  
  color Cmain,Cshadow;

  Bird() {
    
    this.x = 100;
    this.y = height/2;
    this.w = 50;
    this.Cmain = color(#9347B4);
  
  }
  
  void display() {
    fill(this.Cmain);
    ellipseMode(CENTER);
    ellipse(this.x,this.y,this.w,this.w);

  
  }
  void update() {
    this.y += ySpeed;
    this.ySpeed += gravity;
    
    if(jump && jumpVerify) {
      this.ySpeed = -this.jumpVel;
      this.jump = false;
      this.jumpVerify = false;
    }
  }
  
  void jump() {
  
  }
}
