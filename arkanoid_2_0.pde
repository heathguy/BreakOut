boolean DEBUG = true;

// Create some level arrays
int[][] levelOne = new int[][]{{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
                               {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
                               {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
                               {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
                               {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
                               {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
                               {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
                               {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
                               {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
                               {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
                               {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
                               {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
                               {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
                               {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
                               {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}};
                            
int[][] levelElliot = new int[][]{{1, 1, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1},
                                  {1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1},
                                  {1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1},
                                  {1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1},
                                  {1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1},
                                  {1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1},
                                  {1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1},
                                  {1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 1},
                                  {1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 1},
                                  {1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1},
                                  {1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1},
                                  {1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1},
                                  {1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1},
                                  {1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1},
                                  {1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 1}};
                            
int[][] levelTwo = new int[][]{{1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
                            {0, 1, 1, 1, 1, 1, 1, 1, 1, 0},
                            {0, 0, 1, 1, 1, 1, 1, 1, 0, 0},
                            {0, 0, 0, 2, 2, 2, 2, 0, 0, 0},
                            {0, 0, 0, 0, 3, 3, 0, 0, 0, 0}};
int[][] levelThree = new int[][]{{1, 0, 1, 0, 1, 0, 1, 0, 1, 0},
                            {0, 1, 0, 1, 0, 1, 0, 1, 0, 1},
                            {1, 0, 1, 0, 1, 0, 1, 0, 1, 0},
                            {0, 1, 0, 1, 0, 1, 0, 1, 0, 1},
                            {1, 0, 1, 0, 1, 0, 1, 0, 1, 0}};
int[][] levelFour = new int[][]{{1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
                            {0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
                            {3, 3, 3, 0, 0, 0, 0, 3, 3, 3},
                            {3, 1, 3, 0, 0, 0, 0, 3, 1, 3},
                            {3, 3, 3, 0, 0, 0, 0, 3, 3, 3}};
int[][] levelFive = new int[][]{{1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
                              {1, 0, 0, 2, 2, 2, 2, 0, 0, 1},
                              {1, 0, 0, 4, 5, 5, 4, 0, 0, 1},
                              {1, 0, 0, 3, 5, 5, 3, 0, 0, 1},
                              {1, 1, 1, 1, 1, 1, 1, 1, 1, 1}};
                              
int[][] levelTest = new int[][]{{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
                            {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
                            {0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0},
                            {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
                            {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
                            {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
                            {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
                            {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
                            {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
                            {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
          };

ArrayList<Ball> balls = new ArrayList<Ball>();
ArrayList<Brick> bricks = new ArrayList<Brick>();
ArrayList<PowerUp> powerups = new ArrayList<PowerUp>();

Ball ball;
float initalBallSpeed;

Paddle paddle;

PVector paddleLoc;
PVector brickLoc;

PVector lifeCounter = new PVector((width-200),20);

float paddleWidth;
PVector[] paddleHitBoxes;

boolean gamePaused;
boolean gameOver;

int livesRemaining;
int BRICK_SCORE_VALUE = 100;
int POWERUP_SCORE_VALUE = 1000;
int SCORE_MULTIPLIER;
int gameScore;

int powerSpawnPercent;

boolean hitBrick = false;
boolean hitPaddle = false;
boolean hitSomething = false;

int scoreBoardHeight = 50;

PImage paddleImg;

//initalize trig calculations
float sin45 = sin(radians(45));
float sin135 = sin(radians(135));
float sin225 = sin(radians(225));
float sin315 = sin(radians(315));

float cos45 = cos(radians(45));
float cos135 = cos(radians(135));
float cos225 = cos(radians(225));
float cos315 = cos(radians(315));

float testBallX;
float testBallY;

void setup() {
  //size(640, 480);
  size(800, 600);
  
  livesRemaining = 3;
  initalBallSpeed = 3;
  
  SCORE_MULTIPLIER = 1;
  gameScore = 0;
  
  powerSpawnPercent = 0;
  
  paddle = new Paddle();
  
  ball = new Ball(paddle.location.x+(paddle.paddleWidth/2), paddle.location.y-15, 0, initalBallSpeed);
  
  //testing only
  //ball = new Ball(250, 200, -1, -1);
  //************
  
  balls.add(ball);
  
  //setup the brick array list using the level array. define a starting x,y for the first brick and add to it every time a brick is 'placed' in the array list
//add a value to the brick constructor to indicate if the brick is indestructible, check this value on 'hit'
// if the brick is > 0 draw it with a random color: color newBrickColor = color( random(50,256), random(50,256), random(50,256) );
// if the brick is a '-1' draw it dark gray? 
 int bWidth = 50;
 int bHeight = 25;

 int brickX = bHeight;
 int brickY = 75;
 int[][] currLevel = levelElliot;
 int brickPlacement = 0;
 
 //**** TESTING ***
 //color bc1 = color( random(10,256), random(10,256), random(10,256) );
 //Brick brick1 = new Brick(brickX,brickY,bc1, bWidth, bHeight, brickPlacement);
 //bricks.add(brick1);
 //***************
 
 for(int lvlCol = 0; lvlCol < currLevel.length; lvlCol++) {
    for( int lvlRow = 0; lvlRow < currLevel[0].length; lvlRow++) {
      brickPlacement = currLevel[lvlCol][lvlRow];
      if(brickPlacement != 0) {
        color bc = color( random(10,250), random(10,250), random(10,250) );
        Brick brick = new Brick(brickX,brickY,bc, bWidth, bHeight, brickPlacement);
        bricks.add(brick);
      }
      //brickX += 60;
      brickX += bWidth;
      
    }
    brickX = bHeight;
    brickY += bHeight;
  }
  mouseX = width/2;
  mouseY = height;
  gamePaused = true;
  gameOver = false;
  
  if(!DEBUG) {
    noCursor();
  }
  paddleImg = loadImage("images/bar.png");
} // end setup

void mousePressed() {
  if(gamePaused) {
    gamePaused = false;
    loop();
  }
  else {
    gamePaused = true;
    noLoop();
  }

}

// Main Game Loop
void draw() {
  if(gamePaused) {
    noLoop();
  }
  else {
    loop();
  }
  background(60);
  
  // draw score/lives area
  fill(0);
  rect(0,0,width,scoreBoardHeight);
  fill(255);

  paddleWidth = paddle.getPaddleWidth();

  for (int i = 0; i < balls.size();  i++) {
    balls.get(i).show();
    balls.get(i).moveBall();
  }
  for (int j = 0; j < bricks.size();  j++) {
    bricks.get(j).show();
  }
  for (int k = 0; k < powerups.size();  k++) {
    powerups.get(k).show();
    powerups.get(k).move();
  }
  
  /**** CHECK BALL COLLISIONS ****/
//for every ball in ball array {
for (int i = balls.size() - 1; i >= 0;  i--) {
  Ball tempBall = balls.get(i);

  // calculate 8 points on the ball to use for collision detection
  PVector[] ballPoints = new PVector[8];
  PVector P1 = new PVector(tempBall.location.x, tempBall.location.y-tempBall.radius);
  ballPoints[0] = P1;
  PVector P2 = new PVector( (tempBall.location.x + tempBall.radius*cos45), (tempBall.location.y + (tempBall.radius * sin45 * -1) ) );
  ballPoints[1] = P2;
  PVector P3 = new PVector(tempBall.location.x + tempBall.radius, tempBall.location.y);
  ballPoints[2] = P3;
  PVector P4 = new PVector( (tempBall.location.x + (tempBall.radius * cos135 * -1)), (tempBall.location.y + tempBall.radius*sin135) );
  ballPoints[3] = P4;
  PVector P5 = new PVector(tempBall.location.x, tempBall.location.y+tempBall.radius);
  ballPoints[4] = P5;
  PVector P6 = new PVector( (tempBall.location.x + tempBall.radius*cos225), (tempBall.location.y + (tempBall.radius*sin225 * -1)) );
  ballPoints[5] = P6;
  PVector P7 = new PVector( tempBall.location.x-tempBall.radius, tempBall.location.y);
  ballPoints[6] = P7;
  PVector P8 = new PVector( (tempBall.location.x + (tempBall.radius*cos315 * -1)), (tempBall.location.y + tempBall.radius*sin315) );
  ballPoints[7] = P8;

  //for ( PVector b : ballPoints) {
  // println(floor(b.x) + ", " + floor(b.y));
  //}
hitSomething = false;
for(int bP = 0; bP < ballPoints.length; bP++) {
  if(!hitSomething) {
    //println("Ball starting x,y: " + testBallX + ", " + testBallY); 
  
    testBallX = floor(ballPoints[bP].x);
    testBallY = floor(ballPoints[bP].y);
  
  //check collision with board sides
  // old check with radius if(testBallX+tempBall.radius >= width || testBallX-tempBall.radius <= 0) {
    if(testBallX >= width || testBallX <= 0) {
      if(DEBUG) {
          print("Hit wall\n");
      }
      
      if(testBallX <= 0) {
        balls.get(i).location.x = tempBall.radius+1;
      }
      else {
        balls.get(i).location.x = testBallX - tempBall.radius-1;
      }
      
      // get current ball's velocity
      PVector v = balls.get(i).getVelocity();
      // reverse the x velocity
      v.x *= -1;
      // set the ball's velocity
      balls.get(i).setVelocity(v);
      hitSomething = true;
  }
  //check collision with board top.  Adjust for height 50px or more for the score section
  // old check with radius if(testBallY-tempBall.radius <= scoreBoardHeight) {
    if(testBallY <= scoreBoardHeight) {
      if(DEBUG) {
        print("Hit ceiling\n");
      }
      // get current ball's velocity
      PVector v = balls.get(i).getVelocity();
      // reverse the y velocity
      v.y *= -1;
      // set the ball's velocity
      balls.get(i).setVelocity(v);
      hitSomething = true;
  }
  //check collision with board bottom
  // old check with radius if(testBallY+tempBall.radius >= paddle.location.y+(paddle.paddleHeight)) {
    if(testBallY >= paddle.location.y+(paddle.paddleHeight)) {
      if(DEBUG) {
        print("Hit void\n");
      }
      //decrease number of balls remaining
      balls.remove(i);
      if(balls.size() > 0) {          
      }
      else {
        livesRemaining--;

        if(livesRemaining > 0)  {
            Ball ball = new Ball(paddle.location.x+(paddle.paddleWidth/2), paddle.location.y-7, 0, -3);
            //ball.resetBall();
            balls.add(ball);
            gamePaused = true;
        }
        else {
            // draw 'GAME OVER' in red on the screen
            textSize(48);
            fill(50,100,150);
            text(str(gameScore), ((width/2)-48),((height/2)-50));
            fill(220,10,10);
            text("GAME OVER", ((width/2)-48), height/2);
            noLoop();
        }
      }
      hitSomething = true;
  }

//print("TEMP BALL LOCATION: " + testBallX + ", " + testBallY + "\n");

    //check collision with tops and sides of every brick in brick array {
    for (int b = bricks.size() - 1; b >= 0; b--) {
      Brick tempBrick = bricks.get(b);
        //print("TEMP BRICK LOCATION: " + tempBrick.location.x + ", " + tempBrick.location.y + "\n");
        
        // First test to see if the ball intersects a brick
        // if it does then calculate distances to see which side of the brick it hit to determine the bounce
        if( (testBallX >= tempBrick.location.x) && (testBallX <= (tempBrick.location.x + tempBrick.brickWidth)) && (testBallY >= tempBrick.location.y) && (testBallY <= tempBrick.location.y + tempBrick.brickHeight)) {
          if(DEBUG) {
                print("\nHit A brick\n");
                print("Ball Loc: " + testBallX + ", " + testBallY + "\n");
                //println("Ball Velocity Y: " + tempBall.velocity.y);
                print("Brick Loc: " + tempBrick.location.x + ", " + tempBrick.location.y + "\n");
            }
            int x = 0;
            int y = 0;
            // determine where the center of the ball is relative to the brick
            if(tempBall.location.y > tempBrick.location.y+tempBrick.brickHeight || tempBall.location.y < tempBrick.location.y) {
              y = 1;
            }
            else {
              x = 1;
            }
            
            
            
            /*
            //calculate the ball point distance to each edge of the brick
            float topEdgeDist = dist(tempBrick.location.x, tempBrick.location.y, testBallX, testBallY) + dist(tempBrick.location.x+tempBrick.brickWidth, tempBrick.location.y, testBallX, testBallY);
            float rightEdgeDist = dist(tempBrick.location.x+tempBrick.brickWidth, tempBrick.location.y, testBallX, testBallY) + dist(tempBrick.location.x+tempBrick.brickWidth, tempBrick.location.y+tempBrick.brickHeight, testBallX, testBallY);
            float leftEdgeDist = dist(tempBrick.location.x, tempBrick.location.y, testBallX, testBallY) + dist(tempBrick.location.x, tempBrick.location.y+tempBrick.brickHeight, testBallX, testBallY);
            float bottomEdgeDist = dist(tempBrick.location.x, tempBrick.location.y+tempBrick.brickHeight, testBallX, testBallY) + dist(tempBrick.location.x+tempBrick.brickWidth, tempBrick.location.y+tempBrick.brickHeight, testBallX, testBallY);
            
            //calculate the midpoints of each edge and add the dist from that point to ball
            float topEdgeMidX = tempBrick.location.x+(tempBrick.brickWidth/2);
            float topEdgeMidY = tempBrick.location.y;
            topEdgeDist += dist(topEdgeMidX, topEdgeMidY, testBallX, testBallY);
            
            float rightEdgeMidX = tempBrick.location.x+tempBrick.brickWidth;
            float rightEdgeMidY = tempBrick.location.y+(tempBrick.brickHeight/2);
            rightEdgeDist += dist(rightEdgeMidX, rightEdgeMidY, testBallX, testBallY);
            
            float leftEdgeMidX = tempBrick.location.x;
            float leftEdgeMidY = tempBrick.location.y+(tempBrick.brickHeight/2);
            leftEdgeDist += dist(leftEdgeMidX, leftEdgeMidY, testBallX, testBallY);
            
            float bottomEdgeMidX = tempBrick.location.x+(tempBrick.brickWidth/2);
            float bottomEdgeMidY = tempBrick.location.y+(tempBrick.brickHeight/2);
            bottomEdgeDist += dist(bottomEdgeMidX, bottomEdgeMidY, testBallX, testBallY);
            
            topEdgeDist = topEdgeDist/tempBrick.brickWidth;
            rightEdgeDist = rightEdgeDist/tempBrick.brickHeight;
            leftEdgeDist = leftEdgeDist/tempBrick.brickHeight;
            bottomEdgeDist = bottomEdgeDist/tempBrick.brickWidth;
            
            
            // find shortest distance
            float[] edges = { topEdgeDist, rightEdgeDist, leftEdgeDist, bottomEdgeDist };
            float minVal = min(edges);
            */
            PVector v = balls.get(i).getVelocity();
            
            //if(minVal == topEdgeDist || minVal == bottomEdgeDist) {
            if(y > x) {
              println("Hit top/bottom");
              // reverse the y velocity
              v.y *= -1;
            }
            else {
              println("Hit side");
              // reverse the x velocity
              v.x *= -1; 
            }
            
            // set the ball's velocity
            balls.get(i).setVelocity(v);
            
            hitBrick = true;
        }   
           
        //check top and bottom of brick           
        /*if( (testBallX >= tempBrick.location.x) && (testBallX <= (tempBrick.location.x + tempBrick.brickWidth)) && (testBallY >= tempBrick.location.y) && (testBallY <= tempBrick.location.y + tempBrick.brickHeight) && (tempBall.velocity.y > 0)) {
            if(DEBUG) {
                print("Hit top of brick\n");
                print("Ball Loc: " + testBallX + ", " + testBallY + "\n");
                println("Ball Velocity Y: " + tempBall.velocity.y);
                print("Brick Loc: " + tempBrick.location.x + ", " + tempBrick.location.y + "\n");
            }
            // get current ball's velocity
            PVector v = balls.get(i).getVelocity();

            // reverse the y velocity
            v.y *= -1;
            //v.x += random(-0.5,0.5);

            // set the ball's velocity
            balls.get(i).setVelocity(v);

            hitBrick = true;
        }
        else if( (testBallX >= tempBrick.location.x) && (testBallX <= (tempBrick.location.x + tempBrick.brickWidth)) && (testBallY >= tempBrick.location.y) && (testBallY <= (tempBrick.location.y + tempBrick.brickHeight)) && (tempBall.velocity.y < 0)) {
            if(DEBUG) {
                print("Hit bottom of brick\n");
                print("Ball Loc: " + testBallX + ", " + testBallY + "\n");
                print("Brick Loc: " + tempBrick.location.x + ", " + tempBrick.location.y + "\n");
            }
            // get current ball's velocity
            PVector v = balls.get(i).getVelocity();

            // reverse the y velocity
            v.y *= -1;
            //v.x += random(-0.5,0.5);

            // set the ball's velocity
            balls.get(i).setVelocity(v);

            hitBrick = true;
        }// end checking top and bottom of brick
        
        //check sides of brick {
        else if( (testBallY >= tempBrick.location.y) && (testBallY <= (tempBrick.location.y + tempBrick.brickHeight)) && (testBallX >= tempBrick.location.x) && (testBallX <= tempBrick.location.x + tempBrick.brickWidth) && (tempBall.velocity.x > 0)) {  
            if(DEBUG) {
                print("Hit left side of brick\n");
                print("Ball Loc: " + testBallX + ", " + testBallY + "\n");
                print("Brick Loc: " + tempBrick.location.x + ", " + tempBrick.location.y + "\n");
            }
            // get current ball's velocity
            PVector v = balls.get(i).getVelocity();

            // reverse the x velocity
            v.x *= -1;

            // set the ball's velocity
            balls.get(i).setVelocity(v);

            hitBrick = true;
        }
        else if( (testBallY >= tempBrick.location.y) && (testBallY <= (tempBrick.location.y + tempBrick.brickHeight)) && (testBallX >= tempBrick.location.x) && (testBallX <= (tempBrick.location.x + tempBrick.brickWidth)) && (tempBall.velocity.x < 0)) {  
            if(DEBUG) {
                print("Hit RIGHT SIDE Brick!!!\n");
                print("Ball Loc: " + testBallX + ", " + testBallY + "\n");
                print("Brick Loc: " + tempBrick.location.x + ", " + tempBrick.location.y + "\n");
            }
            // get current ball's velocity
            PVector v = balls.get(i).getVelocity();

            // reverse the x velocity
            v.x *= -1;

            // set the ball's velocity
            balls.get(i).setVelocity(v);

            hitBrick = true;
        }
        */
        else {}
            
        if(hitBrick) {
            
            int brickLifeAmt = tempBrick.life - 1;
            
            if(brickLifeAmt <= 0) {
              if(DEBUG) {
                //print("REMOVING BRICK\n\n\n");
              }
              bricks.remove(b);
  
              // check to see if powerup should spawn
              int powRan = floor(random(1,101));
              if( powRan <= powerSpawnPercent) {
                  println("Generate new Power Up and Add it to PowerUp ArrayList");
                  //color puc = color( random(50,256), random(50,256), random(50,256) );
                  PowerUp pu = new PowerUp(tempBrick.location.x,tempBrick.location.y,tempBrick.brickColor, 1);
                  powerups.add(pu);
                  // add a loop in draw to draw all powerups in the array list
              }
              gameScore += (BRICK_SCORE_VALUE * SCORE_MULTIPLIER);
            }
            else {
              bricks.get(b).setBrickLife(brickLifeAmt);
            }
            PVector speedUpBall = tempBall.getVelocity();
            
            if(tempBall.velocity.x > 0) {
              speedUpBall.x += 0.05;
            }
            else {
              speedUpBall.x -= 0.05;
            }
            if(tempBall.velocity.y > 0) {
              speedUpBall.y += 0.05;
            }
            else {
              speedUpBall.y -= 0.05;
            }
            balls.get(i).setVelocity(speedUpBall);
            hitBrick = false;
            hitSomething = true;
        }// end checking sides of brick
    } // end checking brick ArrayList

    //check collision with the paddle
    if( (testBallX >= paddle.location.x) && (testBallX <= paddle.location.x+paddle.paddleWidth) && (testBallY >= paddle.location.y) && hitSomething == false) {
        if(DEBUG) {
            print("Hit paddle\n");
            print("Ball Loc: " + testBallX + ", " + testBallY + "\n");
            print("Brick Loc: " + paddle.location.x + ", " + paddle.location.y + "\n");
        }

        // get current ball's velocity
        PVector v = balls.get(i).getVelocity();
        
        float returnAngle = map(testBallX, paddle.location.x, paddle.location.x + paddleWidth, radians(-135), radians(135)); // return an angle based on the ball location and paddle location mapped between -45 degrees and 45 degrees. Use this value to change the ball velocity
        v.x = returnAngle;
        v.y *= -1; //reverse the direction
        
        // set the ball's velocity
        balls.get(i).setVelocity(v);
    
        //hitPaddle = true;
        hitSomething = true;
    }// end paddle collision check   
    
    }
    else {
      break;
    }
  }// end ball points
} // end ball in ball array

// check collision of every powerup in the powerup array
for(int pu = powerups.size()-1; pu >= 0; pu--) {
  PowerUp tempPu = powerups.get(pu);
  //print("PowerUp Location: "+tempPu.location.x+", "+tempPu.location.y);
  if(tempPu.location.x >= paddle.location.x && tempPu.location.x+tempPu.powerWidth <= paddle.location.x+paddleWidth && tempPu.location.y >= paddle.location.y && tempPu.location.y+tempPu.powerHeight <= paddle.location.y+20) {
    print("COLLECTED POWERUP!!!!");
    gameScore += (POWERUP_SCORE_VALUE * SCORE_MULTIPLIER);
    //alter game state based on powerup's power
    int powerToGenerate = tempPu.power;
    
    if(powerToGenerate == 1) {// multiball
      Ball ball = new Ball(balls.get(0).location.x, balls.get(0).location.y, balls.get(0).velocity.x+random(-1,1), balls.get(0).velocity.y+random(-1,1));
      balls.add(ball);
    }
    powerups.remove(pu);
    /* should not affect velocity but will trigger an alteration to the game state
            ideas: sticky paddle, multi ball, slow down ball(s), speed up ball(s), decrease paddle width, increase paddle width, paddle lasers?, score multiplier
    */
  }
}

  image(paddleImg, paddle.location.x, paddle.location.y);
  paddle.move();
  paddle.location.x = constrain(paddle.location.x,0,width-paddleWidth);

  //update score display
  textSize(36);
  fill(50,100,150);
  text(str(gameScore), 25, 35);

  for(int lr = 1; lr < livesRemaining; lr++) {
  //draw small circles in upper 'score area' to indicate how many lives left 
    fill(255);
    ellipse(width-100+(lr*25), 25, 20, 20);
  }
}
