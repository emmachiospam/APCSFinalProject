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
  //piece.fall();
  piece.display();
  
}
void keyPressed() {

  if (keyCode == RIGHT) {
    piece.move("RIGHT");
      piece.String();
  print(piece.isBounded());
    println();
  }
  if (keyCode == LEFT) {
    piece.move("LEFT");  
    piece.String();
  print(piece.isBounded());
    println();
  }
  if (keyCode == DOWN) {
    piece.move("DOWN");
      piece.String();
  print(piece.isBounded());
    println(); 
  }
  if (keyCode == UP) {
    piece.rotateCCW();
    piece.String();
  }
  if (keyCode == ' ') {
    piece = new P1();
  }
}
