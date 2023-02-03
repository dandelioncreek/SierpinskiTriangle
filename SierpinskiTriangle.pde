 public void setup(){
   fill(0,0,0);
    size(400, 400);
  }
  public void draw(){
   fill(250, 250, 250);
   sierpinski(0, 0, 400);
  }
  public void mouseDragged(){ //optional

  }
  public void sierpinski(int x, int y, int len) {
    if (len <= 20)
      triangle (x, y, x+len, y, x+len/2, y+len);
    else{ sierpinski(x, y, len/2);
         sierpinski(x+len/2, y, len/2);
         sierpinski(x+len/4, y+len/2, len/2);
    }
  }
