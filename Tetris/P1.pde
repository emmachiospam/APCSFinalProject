class P1 {

  int dx, dy;
  int[][] cord; 
  boolean c1, c2;

  public P1() {
    //cord = new int[][]{{0,1}, {1,1}, {2,1}, {1,0}};
   cord = new int[][]{{3,1}, {4,1}, {5,1}, {4,0}};
  }

  void display() {
    for (int i = 0; i < 4; i++) {
     strokeWeight(2);
     stroke(155, 41, 227);
     fill(162,101,201);
     rect(cord[i][0]*30+300, cord[i][1]*30+40, 30, 30);
   }
   
    
  }

  void move(String dir) {
    if (dir.equals("RIGHT")) {
      if(!isBounded()[0].equals("rnp")) {
       for (int i = 0; i < 4; i ++) {
         cord[i][0]++;
       }
      }
    }
    if (dir.equals("LEFT")) {
      if(!isBounded()[0].equals("lnp")) { 
        for (int i = 0; i < 4; i ++) {
          cord[i][0]--;
        }
      }
    }
    if (dir.equals("DOWN")) {
      if(!isBounded()[1].equals("dnp")) {
        for (int i = 0; i < 4; i ++) {
          cord[i][1]++;
        }
      }
    }  

  }
  
  
  void String(){
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
        if(cord[i][0] + 1 > 9){
          result[0] = "rnp";
        }
        if (cord[i][0] - 1 < 0) {
          result[0] = "lnp";
        }
         //if (!(cord[i][0] <= 9 && cord[i][0] >= 0)) {
         //  c1 = false;
         //}
         //if (!(cord[i][1] <= 22)) c2 = false;
        if(cord[i][1] + 1 > 22) {
          result [1] = "dnp";
        }
      }
      return result;
    }
    
  }
  
  
  
  
  
