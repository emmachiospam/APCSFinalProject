Grid board;
ArrayList<P1> pieces;
ArrayList<Integer> future;
P1 piece, nextPiece;
void setup() {
  board = new Grid();
  size(900, 800);
  pieces = new ArrayList<P1>();
  future = new ArrayList<Integer>();
  for (int i = 0; i < 6; i++) {
    future.add((int) (Math.random()*7) + 1);
  }
  piece = new P1(future.get(0));
  pieces.add(piece);
}

void draw() {
  background(0);
  board.display();
  //for (P1 p : pieces) {
  //  p.display();
  //}
  newSpawn();


  //piece.touchNeighbor(pieces);
}


void newSpawn() {
  if (touchNeighbor()) {
    piece.atBottom = true;
  } else {

    fillGrid(0);
    pieces.get(pieces.size()-1).fall();
    fillGrid(1);
  }
  if (piece.atBottom) {
    nextPiece = new P1(future.remove(0));
    int x = (int) (Math.random()*7) + 1;
    future.add(x);
    pieces.add(nextPiece);
    piece = nextPiece;
  }
}

void breakRow(int row) {
  for (int i = 0; i < pieces.size(); i++) {
    int[][] cord = pieces.get(i).cord();
    int[] cordRow = cord[i];
  }
}

void keyPressed() {
  if (keyCode == RIGHT && !touchNeighborsSides()[1].equals("rnp")) {
    fillGrid(0);
    pieces.get(pieces.size()-1).move("RIGHT");
    fillGrid(1);
    //pieces.get(pieces.size()-1).String();
    piece.isBounded();
    //println();
  }
  if (keyCode == LEFT && !touchNeighborsSides()[0].equals("lnp")) {
    fillGrid(0);
    pieces.get(pieces.size()-1).move("LEFT");
    fillGrid(1);
    //pieces.get(pieces.size()-1).String();
    piece.isBounded();    
    //println();
  }
  if (keyCode == DOWN) {
    fillGrid(0);
    pieces.get(pieces.size()-1).move("DOWN");
    fillGrid(1);
    //pieces.get(pieces.size()-1).String();
    piece.isBounded();    
    //println();
  }
  if (keyCode == UP) {
    fillGrid(0);
    pieces.get(pieces.size()-1).turn();
    fillGrid(1);
    pieces.get(pieces.size()-1).onBorder();
    //pieces.get(pieces.size()-1).String();
  }
  if (keyCode == ' ') {
    fillGrid(0);
    while (piece.atBottom == false && touchNeighbor() == false) {
      pieces.get(pieces.size()-1).completeFall();
    }
    fillGrid(1);
    //pieces.add(new P1());
  }
  if (keyCode == 84) {
    for (int i = 0; i < future.size(); i++) {
      print(future.get(i) + " ");
    }
    println();
  }
}
boolean touchNeighbor() {
  boolean touch = false;
  for (int i = 0; i < pieces.size()-1; i++) {
    int[][] pieceFuture = piece.futureCord();
    int[][] otherPiece = pieces.get(i).cord();
    if (equals(pieceFuture, otherPiece)) {
      touch = true;
    }
  }
  return touch;
}

String[] touchNeighborsSides() {
  String[] result = new String[2]; 
  result[0] = "";
  result[1] = "";
  int[][] pieceLeftFuture = copyCord(piece.cord());
  int[][] pieceRightFuture = copyCord(piece.cord());
  for (int j = 0; j < 4; j++) {
    pieceLeftFuture[j][0]--;
    pieceRightFuture[j][0]++;
  }
  for (int i = 0; i < pieces.size()-1; i++) {
    int[][] otherPiece = pieces.get(i).cord();
    if (equals(pieceLeftFuture, otherPiece)) {
      result[0] = "lnp";
    }
    if (equals(pieceRightFuture, otherPiece)) {
      result[1] = "rnp";
    }
  }
  return result;
} 

int[][] copyCord(int[][] main) {
  int[][] copy1 = new int[main.length][main[0].length];
  for (int i = 0; i < main.length; i++) {
    for (int j = 0; j < main[0].length; j++) {
      copy1[i][j] = main[i][j];
    }
  }
  return copy1;
}

boolean equals(int[][] a, int[][] b) {
  boolean result = false;
  for (int[] row1 : a) {
    for (int[] row2 : b) {
      if ((row1[0] == row2[0]) && (row1[1] == row2[1])) result = true;
    }
  }
  return result;
}

void fillGrid(int z) {
  for (int i = 0; i < piece.cord.length; i++) {
    int x = piece.cord[i][1];
    int y = piece.cord[i][0];
    if (z == 0) {
      board.fillBoard(x, y, 0);
    } else {
      board.fillBoard(x, y, piece.index());
    }
  }
  board.boardString();
  println();
}
