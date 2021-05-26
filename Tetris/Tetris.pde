P1 piece;
Grid board;
void setup() {
  size(900,800);
  board = new Grid();
  piece = new P1();
}

void draw() {
  background(0);
  board.display();
  piece.display();
}

void keyPressed() {
  if (keyCode == RIGHT) {
    piece.move();
  }
  
}
