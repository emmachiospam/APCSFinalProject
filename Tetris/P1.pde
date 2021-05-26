class P1 {
  int dx = 30;
  int dy = 30;
  int[] xCor, yCor;
  int[] bttomX, bottomY;
  boolean left, right, down;

  public P1() {
    noStroke();
    fill(162, 101, 201);
    xCor = new int[4];
    yCor = new int[4];

    xCor[0]=390;
    xCor[1]=xCor[0]+30;
    xCor[2]=xCor[1]+30;
    xCor[3]=xCor[0]+30;

    yCor[0] = 40;
    yCor[1] = yCor[0];
    yCor[2] =yCor[1];
    yCor[3] = yCor[0]+30;
    for (int i = 0; i < 4; i++) {
      rect(xCor[i], yCor[i], 30, 30);
    }
  }

  int getBottom() {
    int max = yCor[0];
    for (int i = 0; i < 4; i++) {
      if ( yCor[i] > max) {
        max = yCor[i];
      }
    }
    return max;
  }

  void keyPressed() {
    if (keyCode == 37) {
      left = true;
    }
    if (keyCode == 39) {
      right = true;
    }
    if (keyCode == 40) {
      down = true;
    }
  }
  
  void move() {
    for (int i = 0; i < 4; i++) {
      yCor[i] = yCor[i] + dy;
    }
    if(left) {
      for(int i = 0; i < 4; i++) {
        xCor[i] -= dx;
      }
    }
    if(right) {
      for(int i = 0; i < 4; i++) {
        xCor[i] += dx;
      }
    }
    if(down) {
      for(int i = 0; i < 4; i++) {
        yCor[i] += dy;
      }
    }
  }

  void display() {
    for (int i = 0; i < 4; i++) {
      rect(xCor[i], yCor[i], 30, 30);
    }
  }
}
