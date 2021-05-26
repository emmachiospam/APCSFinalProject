int nextTime;
void setup() {
  size(900,800);
  int nextTime = getTime() + 1000;
  //calculate the current time + 1 second = nexTime
}

void draw() {
  background(0);
  Grid board = new Grid();
  P1 piece = new P1();
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
