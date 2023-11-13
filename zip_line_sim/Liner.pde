class Liner{
  int x, y; //position
  int size;
  color col;
  boolean danger;
  
  Liner(int myx, int myy, int mysize, color mycol){
    x = myx;
    y = myy;
    size = mysize;
    col = mycol;
    danger = false;
  }
  
  void move(int xdisp, int ydisp){
    x += xdisp;
    y += ydisp;
  }
  
  void display(){
    if(danger){
      stroke(#FF0000);
      fill(#FF0000);
      circle(x,y,size*1.5);
      size ++;
    }
    else{
      circle(x,y,size);
      fill(col);
      stroke(col);
    }
  }
  
  float distance(Liner other){
    return dist(other.x,other.y,this.x,this.y);
  }
  boolean checkCollision(Liner other){
    danger = (distance(other) < this.size/2 + other.size/2) && this != other;
    return danger;
  }
}
