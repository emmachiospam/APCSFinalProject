class P1 {
  int dx, dy;
  int[][] cord; 

  public P1() {
    cord = new int[][]{{0,1}, {1,1}, {2,1}, {1,0}};
   
  }

  void display() {
    for (int i = 0; i < 4; i++) {
     noStroke();
     fill(162,101,201);
     rect(cord[i][0]*30+390, cord[i][1]*30+10, 30, 30);
   }
  }
  
  void move() {
    //if (dir.equals("RIGHT")) {
      //for (int i = 0; i < 4; i ++) {
      //  cord[i][0]++;
      //}
    //}
  }
  
  
}
