//NAME OF CLASS

class BouncingBall {

  //VARIBLES

  float x = 0;
  float y = 0;
  float speedX = 4;
  float speedY = 5; 

  //THE COUNSTRUCTOR

  BouncingBall(float _x, float _y) {

    x = _x;
    y = _y;
  }

  //FUNCTIONS

  void run() {
    move();
    bounce();
    gravity();
    display();
  }

  void move() {
    x = x + speedX;
    y = y + speedY;
  }

  void bounce() {
    if ((x > width) || (x < 0)) {
      speedX = speedX * -1;
    }
    if ((y > height ) || (y < 0)) {
      speedY = speedY * -1;
    }
  }

  void gravity() {
    speedY = speedY + 0.2;
  }

  void display() {
    ellipse(x, y, 20, 20);
  }
}
