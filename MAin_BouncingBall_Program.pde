//Main BouncingBall Program

//declared 

BouncingBall[] BouncingBallCollection = new BouncingBall[100];



//Initializes

void setup() {
  size(600, 600);
  smooth();
  for (int i = 0; i < BouncingBallCollection.length; i++) {
    BouncingBallCollection[i] = new BouncingBall(random(width), random(height));
  }
}

//Functionality

void draw() {
  background(0); 
  for (int i = 0; i < BouncingBallCollection.length; i++) {
    BouncingBallCollection[i].run();
  }
}
