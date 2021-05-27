P1 piece;
Grid board;
void setup() {
  size(900, 800);

  piece = new P1();
  board = new Grid();
}

void draw() {
  background(0);
  board.display();
  piece.display();
}
void keyPressed() {
  println();
  piece.String();
  if (keyCode == RIGHT) {
    piece.move("RIGHT");
  }
  if (keyCode == LEFT) {
    piece.move("LEFT");
  }
  if (keyCode == DOWN) {
    piece.move("DOWN");
  }
}
