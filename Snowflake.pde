class Snowflake {
  int sides, col;
  float x, y, th, size, veloc, rotVeloc;
  char c;
  
  Snowflake() {
    this.c = (char)random(65, 122);
    this.sides = (int)random(5, 10);
    this.x = random(width);
    this.y = random(height);
    this.size = random(1, 2);
    this.veloc = random(3);
    this.rotVeloc = random(-10, 10);
    this.col = (int)random(255);
  }
  
  void Move() {
    this.th += this.rotVeloc;
    this.y += this.veloc; 
    if (this.y > height + 16 * size) {
      this.y = -16 * size;
    }
  }
  
  void Draw() {
    fill(this.col);
    pushMatrix();
    textFont(f, 16);
    translate(x, y);
    scale(this.size);
    rotate(radians(this.th));
    for(int i = 0; i < sides; i++) {
      rotate(radians(360 / sides));
      text(this.c, 0, 0);
    }
    popMatrix();
  }
}
