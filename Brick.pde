class Brick {
  PVector location = new PVector();
  color brickColor;
  float brickHeight;
  float brickWidth;
  int life = 1;
  
  Brick(float locx, float locy, color c, float w, float h, int lifeAmt) {
    location.x = locx;
    location.y = locy;
    brickWidth = w;
    brickHeight = h;
    brickColor = c;
    life = lifeAmt;
  }
  
  int getBrickLife() {
    return life;
  }
  
  void setBrickLife(int lifeAmt) {
    life = lifeAmt;
  }
  
  PVector getBrickLocation() {
   return location;
 }
  
  void show() {
    fill(brickColor);
    rect(location.x,location.y,brickWidth,brickHeight);
  }
}
