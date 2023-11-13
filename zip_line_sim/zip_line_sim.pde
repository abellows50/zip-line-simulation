Path[] pathArr;
void setup(){
  size(1000,1000);
  pathArr = new Path[36];
  for(int i = 0; i<pathArr.length; i++){
    pathArr[i] = new Path((int)random(width),(int)random(height),(int)random(-10,10),(int)random(-10,10),color(random(255),random(255),random(255)));
  }
}

void draw(){
  background(255);
  if (frameCount % 10 == 0){
    for (int i = 0; i<pathArr.length; i++){
      pathArr[i].addLiner(pathArr[i].startx,pathArr[i].starty,20);
    }
  }
  for (int i = 0; i<pathArr.length; i++){
    pathArr[i].display();
    pathArr[i].move(1);
    //pathArr[i].purge();
  }
  
}
