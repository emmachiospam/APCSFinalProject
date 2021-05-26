void setup() {
  size(900,800);
}

void draw() {
  background(0);
  Grid board = new Grid();
  P1 piece = new P1();
  board.display();
  piece.display();
}
