class Brick {
  PVector location = new PVector();
  color brickColor;
  float brickHeight = 20;
  float brickWidth = 40;
  int life = 1;
  
  Brick(float locx, float locy, color c, int lifeAmt) {
    location.x = locx;
    location.y = locy;
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
