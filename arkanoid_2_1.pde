boolean DEBUG = true;

// Create some level arrays
int[][] levelOne = new int[][]{{1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
                            {1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
                            {1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
                            {1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
                            {1, 1, 1, 1, 1, 1, 1, 1, 1, 1}};
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

int scoreBoardHeight = 50;

PImage paddleImg;

void setup() {
  size(640, 480);
  paddle = new Paddle();
  
  ball = new Ball(paddle.location.x+(paddle.paddleWidth/2), paddle.location.y-7, 0, -3);
  balls.add(ball);
  
  //paddle.setPaddleHitBoxes();
  
  livesRemaining = 3;
  initalBallSpeed = 3;
  
  SCORE_MULTIPLIER = 1;
  gameScore = 0;
  
  powerSpawnPercent = 0;

  //setup the brick array list using the level array. define a starting x,y for the first brick and add to it every time a brick is 'placed' in the array list
//add a value to the brick constructor to indicate if the brick is indestructible, check this value on 'hit'
// if the brick is > 0 draw it with a random color: color newBrickColor = color( random(50,256), random(50,256), random(50,256) );
// if the brick is a '-1' draw it dark gray? 
 int brickX = 30;
 int brickY = 100;
 
 int[][] currLevel = levelOne;
 int brickPlacement = 0;
 
 for(int lvlCol = 0; lvlCol < currLevel.length; lvlCol++) {
    for( int lvlRow = 0; lvlRow < currLevel[0].length; lvlRow++) {
      brickPlacement = currLevel[lvlCol][lvlRow];
      if(brickPlacement != 0) {
        color bc = color( random(50,256), random(50,256), random(50,256) );
        Brick brick = new Brick(brickX,brickY,bc,brickPlacement);
        bricks.add(brick);
        
      }
      brickX += 60;
    }
    brickX = 30;
    brickY += 50;
 }
  
  mouseX = width/2;
  mouseY = height;
  gamePaused = true;
  gameOver = false;
  
  if(!DEBUG) {
    noCursor();
  }
  
  paddleImg = loadImage("images/bar.png");
  
}

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

  //paddleLoc = paddle.getPaddleLocation();
  paddleWidth = paddle.getPaddleWidth();
  //paddleHitBoxes = paddle.getPaddleHitBoxes();
  //paddle.printHitBoxes(paddleHitBoxes);
  
  //brickLoc = brick.getBrickLocation();
  
  //brick.show();
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
  
  //ball.show();

  //ball.move(paddleLoc, paddleWidth, paddleHitBoxes, brickLoc);
  
  //paddle.setPaddleHitBoxes();
  //paddle.show();
  
  image(paddleImg, paddle.location.x, paddle.location.y);
  paddle.move();
  paddle.location.x = constrain(paddle.location.x,0,width-paddleWidth);
  
  
  /**** CHECK BALL COLLISIONS ****/
//for every ball in ball array {
for (int i = balls.size() - 1; i >= 0;  i--) {
Ball tempBall = balls.get(i);

// calculate 8 points on the ball to use for collision detection
PVector[] ballPoints = new PVector[8];
PVector P1 = new PVector(tempBall.location.x, tempBall.location.y-tempBall.radius);
ballPoints[0] = P1;
PVector P2 = new PVector( (tempBall.location.x + tempBall.radius*cos(45)), (tempBall.location.y + (tempBall.radius * sin(45) * -1) ) );
ballPoints[1] = P2;
PVector P3 = new PVector(tempBall.location.x + tempBall.radius, tempBall.location.y);
ballPoints[2] = P3;
PVector P4 = new PVector( (tempBall.location.x + (tempBall.radius * cos(135) * -1)), (tempBall.location.y + tempBall.radius*sin(135)) );
ballPoints[3] = P4;
PVector P5 = new PVector(tempBall.location.x, tempBall.location.y+tempBall.radius);
ballPoints[4] = P5;
PVector P6 = new PVector( (tempBall.location.x + tempBall.radius*cos(225)), (tempBall.location.y + (tempBall.radius*sin(225) * -1)) );
ballPoints[5] = P6;
PVector P7 = new PVector( tempBall.location.x-tempBall.radius, tempBall.location.y);
ballPoints[6] = P7;
PVector P8 = new PVector( (tempBall.location.x + (tempBall.radius*cos(315) * -1)), (tempBall.location.y + tempBall.radius*sin(315)) );
ballPoints[7] = P8;


//check collision with board sides {
    if(tempBall.location.x+tempBall.radius >= width || tempBall.location.x-tempBall.radius <= 0) {
        if(DEBUG) {
            print("Hit wall\n");
        }

        // get current ball's velocity
        PVector v = balls.get(i).getVelocity();

        // reverse the x velocity
        v.x *= -1;

        // set the ball's velocity
        balls.get(i).setVelocity(v);
        //break;
    }
    //check collision with board top {
    //Adjust for height 50px or more for the score section
    if(tempBall.location.y-tempBall.radius <= scoreBoardHeight) {
        if(DEBUG) {
          print("Hit ceiling\n");
        }

        // get current ball's velocity
        PVector v = balls.get(i).getVelocity();

        // reverse the y velocity
        v.y *= -1;

        // set the ball's velocity
        balls.get(i).setVelocity(v);
        //break;
    }
    //check collision with board bottom
    if(tempBall.location.y+tempBall.radius >= paddle.location.y+(paddle.paddleHeight)) {
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
        break;
    }

//for(int bP = 0; bP < ballPoints.length; bP++) {
    //tempBall.location.x = floor(ballPoints[bP].x);
    //tempBall.location.y = floor(ballPoints[bP].y);


//print("TEMP BALL LOCATION: " + tempBall.location.x + ", " + tempBall.location.y + "\n");
    //check collision with tops and sides of every brick in brick array {
    for (int b = bricks.size() - 1; b >= 0; b--) {
        Brick tempBrick = bricks.get(b);
        //print("TEMP BRICK LOCATION: " + tempBrick.location.x + ", " + tempBrick.location.y + "\n");
        //check top and bottom of brick {            
        //if( (tempBall.location.x >= tempBrick.location.x) && (tempBall.location.x <= (tempBrick.location.x + tempBrick.brickWidth)) && (tempBall.location.y <= tempBrick.location.y) ) {
        if( (tempBall.location.x >= tempBrick.location.x) && (tempBall.location.x <= (tempBrick.location.x + tempBrick.brickWidth)) && (tempBall.location.y >= tempBrick.location.y) && (tempBall.location.y <= tempBrick.location.y + tempBrick.brickHeight) && (tempBall.velocity.y < 0)) {
            if(DEBUG) {
                print("Hit top of brick\n");
                print("Ball Loc: " + tempBall.location.x + ", " + tempBall.location.y + "\n");
                print("Brick Loc: " + tempBrick.location.x + ", " + tempBrick.location.y + "\n");
            }
            // get current ball's velocity
            PVector v = balls.get(i).getVelocity();

            // reverse the y velocity
            v.y *= -1;
            v.x += random(-0.5,0.5);

            // set the ball's velocity
            balls.get(i).setVelocity(v);

            hitBrick = true;
        }
        //else if( (tempBall.location.x >= tempBrick.location.x) && (tempBall.location.x <= (tempBrick.location.x + tempBrick.brickWidth)) && (tempBall.location.y <= (tempBrick.location.y + tempBrick.brickHeight)) ) {
        else if( (tempBall.location.x >= tempBrick.location.x) && (tempBall.location.x <= (tempBrick.location.x + tempBrick.brickWidth)) && (tempBall.location.y >= tempBrick.location.y) && (tempBall.location.y <= (tempBrick.location.y + tempBrick.brickHeight)) && (tempBall.velocity.y > 0)) {
            if(DEBUG) {
                print("Hit bottom of brick\n");
                print("Ball Loc: " + tempBall.location.x + ", " + tempBall.location.y + "\n");
                print("Brick Loc: " + tempBrick.location.x + ", " + tempBrick.location.y + "\n");
            }
            // get current ball's velocity
            PVector v = balls.get(i).getVelocity();

            // reverse the y velocity
            v.y *= -1;
            v.x += random(-0.5,0.5);

            // set the ball's velocity
            balls.get(i).setVelocity(v);

            hitBrick = true;
        }
        //} // end checking top and bottom of brick
        //check sides of brick {
        //else if( (tempBall.location.y >= tempBrick.location.y) && (tempBall.location.y <= (tempBrick.location.y + tempBrick.brickHeight)) && (tempBall.location.x >= tempBrick.location.x) ) {
        //else if( (tempBall.location.y >= tempBrick.location.y) && (tempBall.location.y <= (tempBrick.location.y + tempBrick.brickHeight)) && (tempBall.location.x >= tempBrick.location.x) && (tempBall.location.x <= (tempBrick.location.x + 1)) ) {  
        else if( (tempBall.location.y >= tempBrick.location.y) && (tempBall.location.y <= (tempBrick.location.y + tempBrick.brickHeight)) && (tempBall.location.x >= tempBrick.location.x) && (tempBall.location.x <= tempBrick.location.x + tempBrick.brickWidth) && (tempBall.velocity.x > 0)) {  
            if(DEBUG) {
                print("Hit left side of brick\n");
                print("Ball Loc: " + tempBall.location.x + ", " + tempBall.location.y + "\n");
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
        //else if( (tempBall.location.y >= tempBrick.location.y) && (tempBall.location.y <= (tempBrick.location.y + tempBrick.brickHeight)) && (tempBall.location.x >= tempBrick.location.x) && (tempBall.location.x <= (tempBrick.location.x + tempBrick.brickWidth)) ) {  
        else if( (tempBall.location.y >= tempBrick.location.y) && (tempBall.location.y <= (tempBrick.location.y + tempBrick.brickHeight)) && (tempBall.location.x >= tempBrick.location.x) && (tempBall.location.x <= (tempBrick.location.x + tempBrick.brickWidth)) && (tempBall.velocity.x < 0)) {  
            if(DEBUG) {
                print("Hit RIGHT SIDE Brick!!!\n");
                print("Ball Loc: " + tempBall.location.x + ", " + tempBall.location.y + "\n");
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
        else {}
            
        if(hitBrick) {
            
            int brickLifeAmt = tempBrick.life - 1;
            
            if(brickLifeAmt <= 0) {
              if(DEBUG) {
                print("REMOVING BRICK\n");
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
              speedUpBall.x += 0.1;
            }
            else {
              speedUpBall.x -= 0.1;
            }
            if(tempBall.velocity.y > 0) {
              speedUpBall.y += 0.1;
            }
            else {
              speedUpBall.y -= 0.1;
            }
            balls.get(i).setVelocity(speedUpBall);
            hitBrick = false;
            //break;
        }
        //} // end checking sides of brick
    } // end checking brick ArrayList

    //check collision with 5 areas on the paddle {
    float farLeftEndRange = paddle.location.x + (paddleWidth * .15);
    float leftEndRange = paddle.location.x + (paddleWidth * .40);
    float middleEndRange = paddle.location.x + (paddleWidth * .60);
    float rightEndRange = paddle.location.x + (paddleWidth * .85);
    // far left
    if( (tempBall.location.x >= paddle.location.x) && (tempBall.location.x <= farLeftEndRange) && (tempBall.location.y+tempBall.radius >= paddle.location.y) ) {
        if(DEBUG) {
            print("Hit far left paddle\n");
            print("Ball Loc: " + tempBall.location.x + ", " + tempBall.location.y + "\n");
            print("Brick Loc: " + paddle.location.x + ", " + paddle.location.y + "\n");
        }

        // get current ball's velocity
        PVector v = balls.get(i).getVelocity();

        // reverse the y velocity
        //v.y *= -1;
        // set x velocity to -1.0
        //v.x = -1.0;
        
        // ************************** TESTING *************************************
        // IF THIS WORKS, REFACTOR ALL BALL/PADDLE CODE
        float returnAngle = map(tempBall.location.x, paddle.location.x, paddle.location.x + paddleWidth, radians(-135), radians(135)); // return an angle based on the ball location and paddle location mapped between -45 degrees and 45 degrees. Use this value to change the ball velocity
        //println("Return Angle: "+returnAngle);
        v.x = returnAngle;
        v.y *= -1; //reverse the direction
        // ************************************************************************

        // set the ball's velocity
        balls.get(i).setVelocity(v);
    
        hitPaddle = true;
    }
    // left
    if( (tempBall.location.x > farLeftEndRange) && (tempBall.location.x <= leftEndRange) && (tempBall.location.y+tempBall.radius >= paddle.location.y) ) {
        if(DEBUG) {
            print("Hit left paddle\n");
            print("Ball Loc: " + tempBall.location.x + ", " + tempBall.location.y + "\n");
            print("Brick Loc: " + paddle.location.x + ", " + paddle.location.y + "\n");
        }

        // get current ball's velocity
        PVector v = balls.get(i).getVelocity();

        // reverse the y velocity
        //v.y *= -1;
        // set x velocity to -0.5
        //v.x = -0.5;

        // ************************** TESTING *************************************
        // IF THIS WORKS, REFACTOR ALL BALL/PADDLE CODE
        float returnAngle = map(tempBall.location.x, paddle.location.x, paddle.location.x + paddleWidth, radians(-135), radians(135)); // return an angle based on the ball location and paddle location mapped between -45 degrees and 45 degrees. Use this value to change the ball velocity
        v.x = returnAngle;
        v.y *= -1; //reverse the direction
        // ************************************************************************

        // set the ball's velocity
        balls.get(i).setVelocity(v);

        hitPaddle = true;
    }
    // middle
    if( (tempBall.location.x > leftEndRange) && (tempBall.location.x <= middleEndRange) && (tempBall.location.y+tempBall.radius >= paddle.location.y) ) {
        if(DEBUG) {
            print("Hit middle paddle\n");
            print("Ball Loc: " + tempBall.location.x + ", " + tempBall.location.y + "\n");
            print("Brick Loc: " + paddle.location.x + ", " + paddle.location.y + "\n");
        }

        // get current ball's velocity
        PVector v = balls.get(i).getVelocity();

        // reverse the y velocity
        //v.y *= -1;
        // set x velocity to 0
        //v.x += random(-0.5,0.5);

        // ************************** TESTING *************************************
        // IF THIS WORKS, REFACTOR ALL BALL/PADDLE CODE
        float returnAngle = map(tempBall.location.x, paddle.location.x, paddle.location.x + paddleWidth, radians(-135), radians(135)); // return an angle based on the ball location and paddle location mapped between -45 degrees and 45 degrees. Use this value to change the ball velocity
        v.x = returnAngle;
        v.y *= -1; //reverse the direction
        // ************************************************************************

        // set the ball's velocity
        balls.get(i).setVelocity(v);

        hitPaddle = true;
    }
    // right
    if( (tempBall.location.x > middleEndRange) && (tempBall.location.x <= rightEndRange) && (tempBall.location.y+tempBall.radius >= paddle.location.y) ) {
        if(DEBUG) {
            print("Hit right paddle\n");
            print("Ball Loc: " + tempBall.location.x + ", " + tempBall.location.y + "\n");
            print("Brick Loc: " + paddle.location.x + ", " + paddle.location.y + "\n");
        }

        // get current ball's velocity
        PVector v = balls.get(i).getVelocity();

        // reverse the y velocity
        //v.y *= -1;
        // set x velocity to +0.5
        //v.x = 0.5;
        
        // ************************** TESTING *************************************
        // IF THIS WORKS, REFACTOR ALL BALL/PADDLE CODE
        float returnAngle = map(tempBall.location.x, paddle.location.x, paddle.location.x + paddleWidth, radians(-135), radians(135)); // return an angle based on the ball location and paddle location mapped between -45 degrees and 45 degrees. Use this value to change the ball velocity
        v.x = returnAngle;
        v.y *= -1; //reverse the direction
        // ************************************************************************

        // set the ball's velocity
        balls.get(i).setVelocity(v);

        hitPaddle = true;
    }
    // far right
    if( (tempBall.location.x > rightEndRange) && (tempBall.location.x <= (paddle.location.x + paddleWidth)) && (tempBall.location.y+tempBall.radius >= paddle.location.y) ) {
        if(DEBUG) {
            print("Hit far right paddle\n");
            print("Ball Loc: " + tempBall.location.x + ", " + tempBall.location.y + "\n");
            print("Brick Loc: " + paddle.location.x + ", " + paddle.location.y + "\n");
        }

        // get current ball's velocity
        PVector v = balls.get(i).getVelocity();

        // reverse the y velocity
        //v.y *= -1;
        // set x velocity to +1.0
        //v.x = 1.0;
        
        // ************************** TESTING *************************************
        // IF THIS WORKS, REFACTOR ALL BALL/PADDLE CODE
        float returnAngle = map(tempBall.location.x, paddle.location.x, paddle.location.x + paddleWidth, radians(-135), radians(135)); // return an angle based on the ball location and paddle location mapped between -45 degrees and 45 degrees. Use this value to change the ball velocity
        v.x = returnAngle;
        v.y *= -1; //reverse the direction
        // ************************************************************************

        // set the ball's velocity
        balls.get(i).setVelocity(v);

        hitPaddle = true;
    }
    if(hitPaddle) {
        // make paddle glow for a second
        // set a glow value that decreases over time
        // use this value as an alpha channel for drawing the paddle and decrease it after the paddle is drawn
        // when drawing the paddle:
        //    if(paddle.glow > 0) {
        //        paddle.color = (50,255,50,paddle.glow);
        //        paddle.glow -= 1;
        //    }
        //    else {
        //        paddle.glow = 0;
        //        paddle.color = initial color
        //    }
        // paddle.glow = 255;
        hitPaddle = false;
        //break;
    }
    //} end paddle collision check
    
    
  //}// end ball points
} // end ball in ball array

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
 /*check collision of every powerup in the powerup array {
        should not affect velocity but will trigger an alteration to the game state
            ideas: sticky paddle, multi ball, slow down ball(s), speed up ball(s), decrease paddle width, increase paddle width, paddle lasers?, score multiplier

        remove powerup from powerup array

        gameScore += (POWERUP_SCORE_VALUE * SCORE_MULTIPLIER);
    }*/
  }
}

  //update score
  textSize(36);
  fill(50,100,150);
  text(str(gameScore), 25, 35);

  for(int lr = 1; lr < livesRemaining; lr++) {
  //draw small circles in upper 'score area' to indicate how many lives left 
    fill(255);
    ellipse(width-100+(lr*25), 25, 20, 20);
  }

}
