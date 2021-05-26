class P1 {
  int dx, dy;
  int[] xCor, yCor;

  public P1() {
    noStroke();
    fill(162,101,201);
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
   for (int i = 0; i < 4; i++)
     rect(xCor[i], yCor[i], 30, 30);
  }

  void display() {
  }
}
