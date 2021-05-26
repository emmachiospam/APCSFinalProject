class Grid {
  int[][] board;
  int side;
  
  Grid() {
    int[][] newBoard = new int[23][10];
    board = newBoard;
  }
  
  void display() {
    float increment = 30;
    stroke(200);
    strokeWeight(1);
    noFill();
    for(int i = 0; i < 10; i++) {
      for(int j = 0; j < 23; j++) {
        square(300 + (i * increment),700 - (j * increment),30);
      }
    }
    strokeWeight(4);
    rect(300,40,300,690);
  }
}
