class Ball {
 color ballColor = color(255,255,255);
 float size = 14;
 float radius = size/2;
 
 PVector location = new PVector();
 PVector velocity = new PVector();
 
 //PVector location = new PVector(width/2, height/2+20);
 //PVector velocity = new PVector(0, initalSpeed);
 
 Ball(float locx, float locy, float velx, float vely) {
    location.x = locx;
    location.y = locy;
    velocity.x = velx;
    velocity.y = vely;
  }
 
 void show() {
   fill(ballColor);
   ellipse(location.x,location.y,size,size);
 }
 
 void increaseVel(float x, float y) {
   velocity.x += (x * -1);
   velocity.y += (y * -1);
 }
 
 PVector getVelocity() {
   return velocity;
 }
 
 void setVelocity(PVector v) {
   velocity.x = v.x;
   velocity.y = v.y;
 }
 
 int hitPaddle(PVector pL, float pW, PVector[] pHB) {
   int hitLoc = 0;
   int temp = 0;
   for(int i = 0; i < pHB.length; i++) {
     //print("ball x,y: " + location.x + ", " + location.y + "\n");
     //print("hitbox x,y: " + pHB[i].x + ", " + pHB[i].y + "y loc: " + pL.y + "\n");
     if( (location.y+radius >= pL.y) && ( (location.x+radius >= pHB[i].x) && (location.x+radius <= pHB[i].y) ) ){
       temp = i + 1;
       if(hitLoc == 0) {
         i += 100;
         hitLoc = temp;
       }
     }
     else {
       hitLoc = 0;
     }
   }
   return hitLoc;
 }
 
 int hitABrick(PVector bL) {
   int hitLoc = 0;
   int temp = 0;

   if( ( (location.y+radius >= bL.y) && (location.y+radius <= bL.y+20) ) && ( (location.x+radius >= bL.x) && (location.x+radius <= bL.x+40) ) ){
       velocity.x *= -1;
       velocity.y *= -1;
       location.add(velocity);
       temp = 1;
       if(hitLoc == 0) {
         hitLoc = temp;
       }
     }
     else {
       hitLoc = 0;
     }
  
   return hitLoc;
 }
 
  //void resetBall() {
    //location = new PVector(width/2, height/2);
    //velocity = new PVector(0,initalSpeed);
  //}
 
 void moveBall() {
   location.add(velocity);
 }
 
 /*void move(PVector pL, float pW, PVector[] pHB, PVector bL) { //paddle location and paddle width brick location
 
   int hitBrick = hitABrick(bL);
   if (hitBrick == 1) {
     print("HIT THE BRICK!!");
   }
      
   int hitLocation = hitPaddle(pL, pW, pHB);
   switch(hitLocation) {
     case 1: //far left
       print("Hit Far Left: " + velocity + "\n");
       velocity.x -= 1.5;
       //velocity.x += -2.0;
       //velocity.x += ((-5*PI)/4);
       //velocity.x = initalSpeed;
       velocity.y *= -1;
       break;
     case 2: //left
       print("Hit Left\n");
       //velocity.x *= -1;
       velocity.x -= 1.0;
       //velocity.rotate(PI/2);
       velocity.y *= -1;
       break;
     case 3: //middle
       print("Hit Middle\n");
       velocity.x *= 0;
       velocity.y *= -1;
       //increaseVel(0.5,0.5);
       break;
     case 4: //right
       print("Hit Right\n");
       velocity.x += 1.0;
       //velocity.x += 1.0;
       velocity.y *= -1;
       break;
     case 5: //far right
       print("Hit Far Right\n");
       velocity.x += 1.5;
       //velocity.x += 2.0;
       velocity.y *= -1;
       break;
     default:
       break;
   }
   
   //detect edges
   
   if(location.y+radius > height) {
     // should go straight to game over
     resetBall();
   }
   if(location.y-radius < 0) {
     velocity.y *= -1;
   }
   
   if(location.x+radius > width || location.x-radius < 0) {
     velocity.x *= -1;
   }
   
   location.add(velocity);
 }*/
}
