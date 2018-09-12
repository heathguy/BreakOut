class Paddle {
 color paddleColor = color(0,204,170);
 float paddleHeight = 20;
 float paddleWidth = 100;
 
 PVector pFarLeftHBox = new PVector(0,0);
 PVector pLeftHBox = new PVector(0,0);
 PVector pMiddleHBox = new PVector(0,0);
 PVector pRightHBox = new PVector(0,0);
 PVector pFarRightHBox = new PVector(0,0);
 
 PVector[] pHitBoxes = new PVector[5];
 
 PVector location = new PVector(width/2, height-(paddleHeight*2));
 PVector velocity = new PVector(2,0);
 
 void setPaddleHitBoxes() {
    pFarLeftHBox.x = location.x;
    pFarLeftHBox.y = pFarLeftHBox.x + (paddleWidth * .15); // far left hit box is 15% in size
    pHitBoxes[0] = pFarLeftHBox;
    
    pLeftHBox.x = pFarLeftHBox.y;
    pLeftHBox.y = pLeftHBox.x + (paddleWidth * .20); // left hit box is 20% in size
    pHitBoxes[1] = pLeftHBox;
    
    pMiddleHBox.x = pLeftHBox.y;
    pMiddleHBox.y = pMiddleHBox.x + (paddleWidth * .30); // middle hit box is 30% in size
    pHitBoxes[2] = pMiddleHBox;
    
    pRightHBox.x = pMiddleHBox.y;
    pRightHBox.y = pRightHBox.x + (paddleWidth * .20); // right hit box is 20% in size
    pHitBoxes[3] = pRightHBox;
    
    pFarRightHBox.x = pRightHBox.y;
    pFarRightHBox.y = pFarRightHBox.x + (paddleWidth * .15); // right hit box is 15% in size
    pHitBoxes[4] = pFarRightHBox;
 }
 
 void printHitBoxes(PVector[] h) {
     print("FarLeft: " + h[0].x + ", " + h[0].y + "\n");
     print("Left: " + h[1].x + ", " + h[1].y + "\n");
     print("Middle: " + h[2].x + ", " + h[2].y + "\n");
     print("Right: " + h[3].x + ", " + h[3].y + "\n");
     print("FarRight: " + h[4].x + ", " + h[4].y + "\n");
 }
 
 void show() {
   //setPaddleHitBoxes();
   
   fill(paddleColor);
   //rectMode(CENTER);
   rect(location.x,location.y,paddleWidth,paddleHeight);
   
   //fill(255,0,0);
   //float ly = location.y + paddleHeight;
   //float fLx = location.x * .15;
   //print("LOC = " + location.x + ", " + location.y + "\n");
   //print("FL HBOX = " + fLx + ", " + paddleHeight + "\n");
   //rectMode(CORNERS);
   //rect(location.x, location.y, pHitBoxes[0].x + location.x, pHitBoxes[0].y + location.y);
   //rectMode(CORNER);
 }
 
 void move() {
   location.x = mouseX;
 }
 
 PVector getPaddleLocation() {
   return location;
 }
 
 float getPaddleWidth() {
   return paddleWidth;
 }
 
 PVector[] getPaddleHitBoxes() {
   return pHitBoxes;
 }
}
