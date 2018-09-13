void setup() {
  size(900, 900);
  background(0);
  textSize(100);
  rectMode(CENTER);
  noLoop();
}
float time = 0;
int y = 100;
int x = 50;
int n = 2;
int circleRadius = 100;
float yBall = random(900);
float xBall = random(900);
float ballSize = 10.0;
float yBall2 = random(900);
float xBall2 = random(900);
float ballSize2 = 10.0;
float yBall3 = random(900);
float xBall3 = random(900);
float ballSize3 = 10.0;
float yBall4 = random(900);
float xBall4 = random(900);
float ballSize4 = 10.0;
float yBall5 = random(900);
float xBall5 = random(900);
float ballSize5 = 10.0;
float yBall6 = random(900);
float xBall6 = random(900);
float ballSize6 = 10.0;
float yBall7 = random(900);
float xBall7 = random(900);
float ballSize7 = 10.0;
float shooterPosX = 10, shooterPosY = 10;

void draw() {
 
  time = millis()/1000;


  if (y<=0) {
    y=1;
  }
  if (y>=900) {
    y=899;
  }
  if (x<=0) {
    x=1;
  }
  if (x>=850) {
    x=849;
  }

  background(0);
  frameRate(90);
  distance();
  checkCollision();
  squareMove();
  if ((xBall)<=0) {
    yBall = random(900);
    xBall = random(450, 900);
    ballSize = random(10,250);
  }
  xBall--;

  if ((xBall2)<=0) {
    yBall2 = random(900);
    xBall2 = random(450, 900);
    ballSize2 = random(10,100);
  }
  xBall2=xBall2-(1+time/20);

  if ((xBall3)<=0) {
    yBall3 = random(900);
    xBall3 = random(450, 900);
    ballSize3 = random(10,45);
  }
  xBall3--;
  if ((xBall5)<=0) {
    yBall5 = random(900);
    xBall5 = random(450, 900);
    ballSize5 = random(10,45);
  }
  xBall5=xBall5-(1+time/20);
  if ((xBall4)<=0) {
    yBall4 = random(900);
    xBall4 = random(450, 900);
    ballSize4 = random(10,45);
  }
  xBall4=xBall4-(1+time/20);
  if ((xBall6)<=0) {
    yBall6 = random(900);
    xBall6 = random(450, 900);
    ballSize6 = random(10,45);
  }
  xBall6=xBall6-6;
  if ((xBall7)<=0) {
    yBall7 = random(900);
    xBall7 = random(450, 900);
    ballSize7 = random(10,45);
  }
  xBall7--;
  ellipse(xBall3, yBall3, ballSize3, ballSize3);
  ellipse(xBall2, yBall2, ballSize2, ballSize2);
  ellipse(xBall, yBall, ballSize, ballSize);
  ellipse(xBall4, yBall4, ballSize4, ballSize4);
  ellipse(xBall5, yBall5, ballSize5, ballSize5);
  ellipse(xBall6, yBall6, ballSize6, ballSize6);
  ellipse(xBall7, yBall7, ballSize7, ballSize7);
//spaceship and engine
  fill(#6F9FD8);
  //arc(x, y, 100, 100, (2.9), (3.383));
  rect(x-40, y, 40, 17);
  fill(255,random(69,215),0);
  ellipse(x-random(70,90),y+random(-2,2),random(5,20),random(5,20));
  ellipse(x-random(70,90),y+random(-2,2),random(5,20),random(5,20));
  ellipse(x-random(70,90),y+random(-2,2),random(5,20),random(5,20));
  ellipse(x-random(70,90),y+random(-2,2),random(5,20),random(5,20));
  float sizeFire = random(10,27);
  ellipse(x-random(80,94),y,sizeFire,sizeFire);
 
 
  fill(#E94B3C);
  arc(x, y, 50, 50, (2.8), (3.483));
}
void distance() {

  if (dist(mouseX, mouseY, x, y) < circleRadius) {
    ellipse(shooterPosX, shooterPosY, 60, 10);
    if (shooterPosX>860){
    shooterPosX=x;
    }
    else {
      shooterPosX = shooterPosX + 5;
    }
    shooterPosY=y+random(-20,20);
    fill(#8A2BE2);
  } else {
    shooterPosY=-10;
    fill(0, 255, 0);
  }
}
void squareMove() {
  if (keyPressed== true) {
    if (key == 'w') {
      y-= n;
    }
    if (key == 'a') {
      x-= n;
    }
    if (key == 's') {
      y+= n;
    }
    if (key == 'd') {
      x+= n;
    }
  }
}
void checkCollision() {
  float distance1 = dist(xBall, yBall, x+5, y);
  float distance2 = dist(xBall2, yBall2, x+5, y);
  float distance3 = dist(xBall3, yBall3, x+5, y);
  float distance4 = dist(xBall4, yBall4, x+5, y);
  float distance5 = dist(xBall5, yBall5, x+5, y);
  float distance6 = dist(xBall6, yBall6, x+5, y);
  float distance7 = dist(xBall7, yBall7, x+5, y);
  float shotdistance1 = dist(xBall, yBall, shooterPosX+ballSize, shooterPosY);
  float shotdistance2 = dist(xBall2, yBall2, shooterPosX+5, shooterPosY);
  float shotdistance3 = dist(xBall3, yBall3, shooterPosX+5, shooterPosY);
  float shotdistance4 = dist(xBall4, yBall4, shooterPosX+5, shooterPosY);
  float shotdistance5 = dist(xBall5, yBall5, shooterPosX+5, shooterPosY);
  float shotdistance6 = dist(xBall6, yBall6, shooterPosX+5, shooterPosY);
  float shotdistance7 = dist(xBall7, yBall7, shooterPosX+5, shooterPosY);
  if (distance1<ballSize/2||distance2<ballSize2/2||distance3<ballSize3/2||distance4<ballSize4/2||distance5<ballSize5/2||distance6<ballSize6/2||distance7<ballSize7/2) {
    background(255);
    text("GAME OVER\n SCORE "+(int)time, 10, 300);
    noLoop();
  }
  if (shotdistance1<15) {
    xBall = 600;
  }
  if (shotdistance2<15) {
    xBall2 = 600;
  }
  if (shotdistance3<15) {
    xBall3 = 600;
  }
  if (shotdistance4<15) {
    xBall4 = 600;
  }
  if (shotdistance5<15) {
    xBall5 = 600;
  }
  if (shotdistance6<15) {
    xBall6 = 600;
  }
  if (shotdistance7<15) {
    xBall7 = 600;
  }
}
void mousePressed() {
  loop();  // Holding down the mouse activates looping
}