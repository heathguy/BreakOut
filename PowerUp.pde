class PowerUp {
  PVector location = new PVector();
  PVector velocity = new PVector(0,3);
  color powerColor;
  float powerHeight;
  float powerWidth;
  
  //ideas: sticky paddle, multi ball, slow down ball(s), speed up ball(s), decrease paddle width, increase paddle width, paddle lasers?, score multiplier
  int power = -1;
  
  PowerUp(float locx, float locy, color c, float w, float h, int p) {
    location.x = locx;
    location.y = locy;
    powerWidth = w;
    powerHeight = h;
    powerColor = c;
    power = p;
  }
  
  
  PVector getPowerUpLocation() {
   return location;
 }
  
  void show() {
    fill(powerColor);
    rect(location.x,location.y,powerWidth,powerHeight);
  }
  
  void move() {
   location.add(velocity);
 }
}
