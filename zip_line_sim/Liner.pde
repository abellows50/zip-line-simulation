class Liner{
  int x, y; //position
  int size;
  color col;
  
  Liner(int myx, int myy, int mysize, color mycol){
    x = myx;
    y = myy;
    size = mysize;
    col = mycol;
  }
  
  void move(int xdisp, int ydisp){
    x += xdisp;
    y += ydisp;
  }
  
  void display(){
    fill(col);
    stroke(col);
    circle(x,y,size);
  }
}
