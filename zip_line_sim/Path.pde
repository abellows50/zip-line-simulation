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
    myLiners = new Liner[0]; 
}
  
  void checkCollision(Path other){
    for(int i = 0; i < this.myLiners.length; i++){
      for(int j = 0; j < other.myLiners.length; j++){
         if(myLiners[i].checkCollision(other.myLiners[j])){
           break;
         }
      }
    }
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
  
  //void purge(){
  //  int last = 0;
  //  while(last < myLiners.length - 1){
  //    for(int i = last; i<myLiners.length; i++){
  //      last = i;
  //      println(i + "," + myLiners.length);
  //      if (myLiners[i].x > width || myLiners[i].x < 0 ||
  //          myLiners[i].y > width || myLiners[i].y < 0){
  //            Liner[] newArr = new Liner[myLiners.length - 1];
  //            for(int j = 0; j<i; j++){
  //              newArr[j] = myLiners[i];
  //            }
  //            for(int j = i+1; j<newArr.length; j++){
  //              newArr[j] = myLiners[i];
  //            }
  //            myLiners = newArr;
  //            break;
  //          }
  //    }
  //  }
  //}
      
    
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
