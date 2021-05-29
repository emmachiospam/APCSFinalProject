class P1 {

  int dx, dy;
  int[][] cord; 
  boolean c1, c2;
  int inc = 1000;
  //int[][] r1 = new int[][]{{4,1}, {4,0}, {4,2}, {5,1}};
  int cx, cy;
  int[][] copy;
  int index;

  public P1() {
    int rng = (int) (Math.random()*7);
    index = rng;
    if (rng == 0)
    cord = new int[][]{{4, 1}, {3, 1}, {5, 1}, {4, 0}};
    if (rng == 1)
    cord = new int[][]{{4, 0}, {3, 0}, {4, 1}, {5, 1}};
    if (rng == 2)
    cord = new int[][]{{5, 0}, {4, 0}, {4, 1}, {3, 1}};
    if (rng == 3)
    cord = new int[][]{{3, 0}, {4, 0}, {5, 0}, {6, 0}};
    if (rng == 4)
    cord = new int[][]{{4, 0}, {5, 0}, {4, 1}, {5, 1}};
    if (rng == 5)
    cord = new int[][]{{4, 0}, {5, 0}, {4, 1}, {4, 2}};
    if (rng == 6)
    cord = new int[][]{{4, 0}, {5, 0}, {5, 1}, {5, 2}};
    print(rng);
  }

  void display() {
    for (int i = 0; i < 4; i++) {
      strokeWeight(2);
      if (index == 0) {
        stroke(155, 41, 227);
        fill(162, 101, 201);
      }
      if (index == 1) {
        stroke(178, 0, 27);
        fill(232, 2, 37);
      }
      if (index == 2) {
        stroke(107, 203, 39);
        fill(123, 255, 31);
      }
      if (index == 3){
        stroke(41, 183, 224);
        fill(101, 201, 198);
      }
      if (index == 4) {
        stroke(224, 224, 27);
        fill(249, 250, 15);
      }
      if (index == 5) {
        stroke(22, 30, 157);
        fill(50, 62, 250);
      }
      if (index == 6) {
        stroke(214, 135, 15);
        fill(255, 161, 18);
      }
      rect(cord[i][0]*30+300, cord[i][1]*30+40, 30, 30);
    }
  }

  void fall() {
    if (inc % 60 ==0) {
      move("DOWN");
    }
    inc--;
  }

  void move(String dir) {
    if (dir.equals("RIGHT")) {
      if (!isBounded()[0].equals("rnp")) {
        for (int i = 0; i < 4; i ++) {
          cord[i][0]++;
        }
      }
    }
    if (dir.equals("LEFT")) {
      if (!isBounded()[0].equals("lnp")) { 
        for (int i = 0; i < 4; i ++) {
          cord[i][0]--;
        }
      }
    }
    if (dir.equals("DOWN")) {
      if (!isBounded()[1].equals("dnp")) {
        for (int i = 0; i < 4; i ++) {
          cord[i][1]++;
        }
      }
    }
  }


  void String() {
    for (int i = 0; i < cord.length; i++)
    {
      for (int j = 0; (cord[i] != null && j < cord[i].length); j++) {
        print(cord[i][j] + " ");
      }
      println();
    }
  }

  String[] isBounded() {
    String[] result = new String[2];
    result[0] = "";
    result [1] = "";
    for (int i = 0; i < cord.length; i++) {
      if (cord[i][0] + 1 > 9) {
        result[0] = "rnp";
      }
      if (cord[i][0] - 1 < 0) {
        result[0] = "lnp";
      }
      if (cord[i][1] + 1 > 22) {
        result [1] = "dnp";
      }
      if (cord[i][1] - 1 < 0) {
        result [1] = "unp";
      }
    }
    return result;
  }

  void rotateCCW() {
    copy = cord.clone();
    int[][] copy2 = new int[4][2];
    for (int i = 0; i < 4; i++) {
      //copy2[i][0] = copy[0][0]+copy[0][1] - copy[i][1];
      //copy2[i][1] = copy[i][0] +copy[0][1]-copy[0][0];
      copy2[i][0] = copy[0][0] + copy[i][1]-copy[0][1];
      copy2[i][1] = -copy[i][0] +copy[0][1]+copy[0][0];
    }
    cord = copy2;
  }
  
  int[][] test() {
    copy = cord.clone();
    int[][] copy2 = new int[4][2];
    for (int i = 0; i < 4; i++) {
      //copy2[i][0] = copy[0][0]+copy[0][1] - copy[i][1];
      //copy2[i][1] = copy[i][0] +copy[0][1]-copy[0][0];
      copy2[i][0] = copy[0][0] + copy[i][1]-copy[0][1];
      copy2[i][1] = -copy[i][0] +copy[0][1]+copy[0][0];
    }
    return copy2;
  }
  
  String[] onBorder() {
    String[] result = new String[2];
    int[][] test = test();
    result[0] = "";
    result [1] = "";
    for (int i = 0; i < cord.length; i++) {
      if (test[i][0] + 1 > 9) {
        result[0] = "rnp";
      }
      if (test[i][0] - 1 < 0) {
        result[0] = "lnp";
      }
      if (test[i][1] + 1 > 22) {
        result [1] = "dnp";
      }
      if (test[i][1] - 1 < 0) {
        result [1] = "unp";
      }
    }
    print(result[0] + " "  + result[1]);
    return result;
  }
  
  void turn() {
    if (!onBorder()[0].equals("rnp") || !onBorder()[0].equals("lnp")) {
      if (!onBorder()[1].equals("dnp") || !onBorder()[1].equals("unp")) {
        for (int i = 0; i < 4; i ++) {
          rotateCCW();
        }
      }
    }
  }
  
}
