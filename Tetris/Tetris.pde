Grid board;
ArrayList<P1> pieces;
P1 piece, nextPiece;
int increment;
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
  for (P1 p : pieces) {
    p.display();
  }
  newSpawn();
  pieces.get(pieces.size()-1).fall();
  
  
  //piece.touchNeighbor(pieces);

}

void newSpawn() {
  if (touchNeighbor(pieces)) {
    piece.atBottom = true;
  }
  else {
    pieces.get(pieces.size()-1).fall();
  }
  if (piece.atBottom) {
    nextPiece = new P1();
    pieces.add(nextPiece);
    piece = nextPiece;

  }
}

void keyPressed() {
  if (keyCode == RIGHT) {
    pieces.get(pieces.size()-1).move("RIGHT");
    pieces.get(pieces.size()-1).String();
    piece.isBounded();
    println();
  }
  if (keyCode == LEFT) {
    pieces.get(pieces.size()-1).move("LEFT");  
    pieces.get(pieces.size()-1).String();
piece.isBounded();    println();
  }
  if (keyCode == DOWN) {
    pieces.get(pieces.size()-1).move("DOWN");
    pieces.get(pieces.size()-1).String();
piece.isBounded();    println();
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

boolean touchNeighbor(ArrayList<P1> pieces) {
  boolean touch = false;
    for (int i = 0; i < pieces.size()-1; i++) {
      P1 p = pieces.get(i);
      int [][] cord = p.cord();
      int [][] futureCord = piece.futureCord();
      for(int j = 0; j < cord.length; j++) {
        for(int k = 0; k < futureCord.length; k++) {
           //println(cord.length + ""+ futureCord.length);
          if(equals(cord[j], futureCord[k])) {
            touch = true;
          }
        }
      }
    }
    return touch;
  }
  
    boolean equals(int[] a, int[] b) {
    boolean result = false;
    for(int i = 0; i < a.length; i++) {
      if (a[i] != b[i]) {
        result = true;
      }
    }
    return result;
  }
