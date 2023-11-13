Path[] pathArr;
void setup(){
  size(1000,1000);
  frameRate(20);
  int stepmax = 10;
  pathArr = new Path[10];
  for(int i = 0; i<pathArr.length; i++){
    pathArr[i] = new Path((int)random(width),(int)random(height),(int)random(-stepmax,stepmax),(int)random(-stepmax,stepmax),color(random(255),random(255),random(255)));
  }
}

void draw(){
  background(255);
  for (int i = 0; i<pathArr.length; i++){
    for (int j = 0; j<pathArr.length; j++){
      if (pathArr[i] != pathArr[j]){
        pathArr[i].checkCollision(pathArr[j]);
      }
    }
    pathArr[i].display();
    pathArr[i].move(1);
    
    //pathArr[i].purge();
  }
  if (frameCount % 20 == 0){
    for (int i = 0; i<pathArr.length; i++){
      pathArr[i].addLiner(pathArr[i].startx,pathArr[i].starty,20);
    }
  }
  
  
}
