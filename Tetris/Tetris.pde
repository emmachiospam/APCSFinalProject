Grid board;
ArrayList<P1> pieces;
P1 piece, nextPiece;
void setup() {
  size(900, 800);
  pieces = new ArrayList<P1>();
  piece = new P1();
  pieces.add(piece);
  board = new Grid();
}

void draw() {
  background(0);
  board.display();
  for (P1 p: pieces) {
    p.display();
  }
  newSpawn();
  pieces.get(pieces.size()-1).fall();
}

void newSpawn() {
  if (piece.atBottom) {
    nextPiece = new P1();
    pieces.add(nextPiece);
    piece = nextPiece;
    nextPiece.atBottom = false;
  }
}

void keyPressed() {
  if (keyCode == RIGHT) {
    pieces.get(pieces.size()-1).move("RIGHT");
      pieces.get(pieces.size()-1).String();
  print(pieces.get(pieces.size()-1).isBounded());
    println();
  }
  if (keyCode == LEFT) {
    pieces.get(pieces.size()-1).move("LEFT");  
    pieces.get(pieces.size()-1).String();
  print(pieces.get(pieces.size()-1).isBounded());
    println();
  }
  if (keyCode == DOWN) {
    pieces.get(pieces.size()-1).move("DOWN");
      pieces.get(pieces.size()-1).String();
  print(pieces.get(pieces.size()-1).isBounded());
    println(); 
  }
  if (keyCode == UP) {
    pieces.get(pieces.size()-1).turn();
    pieces.get(pieces.size()-1).onBorder();
    pieces.get(pieces.size()-1).String();
  }
  if (keyCode == ' ') {
    pieces.add(new P1());
  }
}

//void keyPressed() {
//  println();
//  piece.String();

//  if (keyCode == RIGHT) {
//    piece.move("RIGHT");
//    piece.String();
//    print(piece.isBounded());
//    println();
//  }
//  if (keyCode == LEFT) {
//    piece.move("LEFT");
//    piece.move("LEFT");  
//    piece.String();
//    print(piece.isBounded());
//    println();
//  }
//  if (keyCode == DOWN) {
//    piece.move("DOWN");
//    piece.String();
//    print(piece.isBounded());
//    println();
//  }
  //if (keyCode == ' ') {
  //  piece = new P1();
  //}
//}
