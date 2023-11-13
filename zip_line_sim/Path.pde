class Path{
  int startx, starty, endx, endy, xdisp,ydisp;
  color col;
  Liner[] myLiners;
  
  Path(int startx1, int starty1, int xdisp1, int ydisp1, color myCol){
    col = myCol;
    startx = endx = startx1;
    starty = endy = starty1;
    xdisp = xdisp1;
    ydisp = ydisp1;
    while (0<=endx && endx<=width && 0<= endy && endy <= height){
      endx += xdisp;
      endy += ydisp;
    }
    while (0<=startx && startx<=width && 0<= starty && starty <= height){
      startx -= xdisp;
      starty -= ydisp;
    }
    println(startx + "<" + starty + "<" + endx + "<" + endy);
    myLiners = new Liner[0];
  

}
  
  void display(){
    stroke(col);
    strokeWeight(3);
    line(startx,starty,endx,endy);
    for(int i = 0; i < myLiners.length; i++){
      myLiners[i].display();
    }
  }
  
  void move(int perc){
    for(int i = 0; i < myLiners.length; i++){
      myLiners[i].move(xdisp*perc,ydisp*perc);
    }
  }
  
  void addLiner(int x,int y,int size){
    Liner[] newLiners;
    newLiners = myLiners;
    myLiners = new Liner[myLiners.length + 1];
    for(int i = 0; i<newLiners.length; i++){
      myLiners[i] = newLiners[i];
    }
    myLiners[myLiners.length - 1] = new Liner(x,y,size,col);
  }
}
