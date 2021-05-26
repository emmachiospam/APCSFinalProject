<<<<<<< HEAD
P1 piece;
Grid board;
void setup() {
  size(900,800);
  board = new Grid();
  piece = new P1();
=======
int nextTime;
void setup() {
  size(900,800);
  int nextTime = getTime() + 1000;
  //calculate the current time + 1 second = nexTime
>>>>>>> e4ffbd781117ab5fe7c9b1c92d01da3e44241d82
}

void draw() {
  background(0);
  board.display();
  //if currentTime >= nextTime =
  if(getTime() >= nextTime) {
    piece.move();
    //nextTime + 1 second;
    piece.display();
  }
}

int getTime() {
  return millis();
}

void keyPressed() {
  if (keyCode == RIGHT) {
    piece.move();
  }
  
}
