class Grid {
  int[][][] board;
  int side;
  boolean preview = false;
  
  Grid() {
    int[][][] newBoard = new int[23][10][1];
    for (int i = 0; i < 10; i++) {
      for (int j = 0; j < 23; j++) {
        newBoard[j][i][0] = 0;
      }
    }
    board = newBoard;
  }

  void display() {
    float increment = 30;
    stroke(200);
    strokeWeight(1);
    noFill();
    for (int i = 0; i < 10; i++) {
      for (int j = 0; j < 23; j++) {
        square(300 + (i * increment), 700 - (j * increment), 30);
      }
    }
    strokeWeight(4);
    rect(300, 40, 300, 690);
  }
  
  int getCord(int x, int y) {
    return board[x][y][0];
  }
  
  void fill(int x, int y) {
    board[x][y][0] = 1;
  }
  
    void boardString() {
    int[][] result = new int[23][10];
    for (int i = 0; i < 23; i++) {
      for (int j = 0; j < 10; j++) {
        result[i][j] =getCord(i, j);
      }
    }

    for (int i = 0; i < result.length; i++)
    {
      for (int j = 0; (result[i] != null && j < result[i].length); j++) {
        print(result[i][j] + " ");
      }
      println();
    }
  }
  
 
  
 


}
