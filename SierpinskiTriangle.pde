//public color c = color((int)Math.random()*254 +1, (int)Math.random()*254 +1, (int)Math.random()*254 +1);

 public void setup(){
   fill(0,0,0);
    size(400, 400);
    frameRate(3);
    
  }
  public void draw(){
   background(0,0,0);
   fill((float)Math.random()*255,(float)Math.random()*255,(float)Math.random()*255);
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
