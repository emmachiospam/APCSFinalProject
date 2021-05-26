P1 piece;
Grid board;
void setup() {
  size(900,800);
  
  piece = new P1();
  board = new Grid();
}

void draw() {
  background(0);
  board.display();
  piece.display();
  
}
void keyPressed() {
  if (keyCode == RIGHT) {
    piece.move("RIGHT");
  }
  
}
