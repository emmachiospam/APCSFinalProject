P1 piece;
Grid board;
boolean placed;
ArrayList<P1> pieces;
void setup() {
  size(900, 800);
  pieces = new ArrayList<P1>();
  placed = true;
  piece = new P1();
  board = new Grid();
}

void draw() {
  background(0);
  board.display();
  play();
  
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
    piece.turn();
    piece.onBorder();
    piece.String();
  }
  if (keyCode == ' ') {
    piece = new P1();
  }
}

boolean equals(int[] a, int[] b) {
  boolean result = true;
  for(int i = 0; i < a.length; i++) {
    for(int j = 0; j < b.length; j++) {
      if(a[i] == b[j]) {
        result = false;
      }
    }
  }
  return result;
}

void play() {
  if(placed) {
    P1 newSpawn = new P1();
    pieces.add(newSpawn);
  } 
  else {
    P1 current = pieces.get(pieces.size()-1);
    for(int k = 0; k < pieces.size() - 1; k++) {
      int[][] currentCord = pieces.get(pieces.size() - 1).futureCord();
      int[][] cord = pieces.get(k).cord();
      for(int i = 0; i < 4; i++) {
        for(int j = 0; j < 4; j++) {
          placed = equals(cord[i], currentCord[j]);
        }
      }
    }
    current.fall();
    current.display();
  }
}
