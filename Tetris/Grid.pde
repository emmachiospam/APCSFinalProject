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
    for (int i = 0; i < 10; i++) {
      for (int j = 0; j < 23; j++) {
        if (board[j][i][0] == 0) {
          stroke(200);
          strokeWeight(1);
          noFill();
          rect(i*30+300, j*30+40, 30, 30);
        }
        strokeWeight(2);
        //red z-block
        if (board[j][i][0] == 1) { 
          stroke(162, 41, 45);
          fill(167, 54, 58, 150);
          rect(i*30+300, j*30+40, 30, 30);
        }
        //green s-block
        if (board[j][i][0] == 2) {
          stroke(107, 203, 39);
          fill(123, 255, 31, 150);
          rect(i*30+300, j*30+40, 30, 30);
        }
        //blue i-block
        if (board[j][i][0] == 3) {
          stroke(41, 183, 224);
          fill(101, 201, 198, 150);
          rect(i*30+300, j*30+40, 30, 30);
        }
        //yellow o-block
        if (board[j][i][0] == 4) {
          stroke(224, 224, 27);
          fill(249, 250, 15, 150);
          rect(i*30+300, j*30+40, 30, 30);
        }
        //blue j-block
        if (board[j][i][0] == 5) {
          stroke(33, 106, 219);
          fill(35, 117, 245, 150);
          rect(i*30+300, j*30+40, 30, 30);
        }
        //orange l-block
        if (board[j][i][0] == 6) {
          stroke(214, 135, 15);
          fill(255, 161, 18, 150);
          rect(i*30+300, j*30+40, 30, 30);
        }
        //purple t-block
        if (board[j][i][0] == 7) {
          stroke(155, 41, 227);
          fill(162, 101, 201, 150);
          rect(i*30+300, j*30+40, 30, 30);
        }
        //rect(cord[i][0]*30+300, cord[i][1]*30+40, 30, 30);
        //rect(cord[i][0]*30+300, cord[i][1]*30+40, 30, 30);
      }
    }
    noFill();
    stroke(200);
    strokeWeight(4);
    rect(300, 40, 300, 690);
  }

  int getCord(int x, int y) {
    return board[x][y][0];
  }

  void fillBoard(int x, int y, int index) {
    board[x][y][0] = index;
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

  void breakRow(int x) {
    boolean filled = true;
    for (int k = 0; k < board[0].length; k++) {
      if (board[x][k][0] == 0) {
        filled = false;
      }
    }
    if (filled) {
      int[][][] newBoard = new int[23][10][1];
      for (int i = 0; i < 10; i++) {
        for (int j = 0; j < 23; j++) {
          if(j > x) {
            newBoard[j][i][0] = getValue(j,i);
          }
          else if(j == 0) {
            newBoard[j][i][0] = 0;
          }
          else {
            newBoard[j][i][0] = getValue(j-1,i);
          }
          //newBoard[j][i][0] = 0;
        }
      }
      //for (int n = 22; n > x; x--) {
      //  for (int m = 0; m < board[0].length; m++) {
      //    newBoard[n][m][0] = getValue(n, m);
      //  }
      //}
      //for (int i = x - 1; i >= 0; i--) {
      //  for (int j = 0; j < board[0].length; j++) {
      //    newBoard[i+1][j][0] = getValue(i, j);
      //  }
      //}
      board = newBoard;
    }
  }

  int getValue(int x, int y) {
    return board[x][y][0];
  }
}
