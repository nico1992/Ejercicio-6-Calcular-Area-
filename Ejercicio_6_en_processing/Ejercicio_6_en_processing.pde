int[] miArray = new int[4];
void drawTarget(int blx1,int bly1,int trx1,int try1,int  blx2,int bly2,int trx2,int try2){
  fill(0,255, 255);
  rect(blx1*20,bly1*20,trx1*20,try1*20);
  fill(255, 66, 0);
  rect(blx2*20,bly2*20,trx2*20,try2*20);
  textSize(26);
  fill(0, 0, 0);
  text("coord:"+trx2+","+try2,trx2*20,try2*20);
  text("coord:"+trx1+","+try1,trx1*20,try1*20);
  text("coord:"+blx2+","+bly2,blx1*20,bly2*20);
  text("coord:"+blx1+","+bly1,blx1*20,bly1*20);
  if(blx1>blx2){
    miArray[0]=blx1;
  }
  else miArray[0]=blx2;
  if(bly1>bly2){
    miArray[1]=bly1;
  }
  else miArray[1]=bly2;
  if(trx1<trx2){
    miArray[2]=trx1;
  }
  else miArray[2]=trx2;
  if (try1<try2){
    miArray[3]=try1;
  }
  else miArray[3]=try2;
}
void setup(){
  size(1000,600);
}
void draw() {
  background(255,255,255);
  drawTarget(0,2,5,10,  3,1,20,15) ;
  
  
  int xa=miArray[2]-miArray[0];
  int ya=miArray[3]-miArray[1];
  int area= xa *ya;
  if (xa==0||ya==0){
  fill(76, 40, 130);
    textSize(26);
  text("Area= "+0, mouseX,20);
  }
  else{
    fill(76, 40, 130);
    textSize(26);
  text("Area= "+area, mouseX,20);}
  
  if(area >2147483647){
     println(" -1");
  }
  fill(random(255), random(255), random(255));
  for (int i=0;i<1200;i+=20){
    stroke(100);
    line(0,i, width, i);
    line(i,0,i,width);
  }
  rect(miArray[0]*20, miArray[1]*20, miArray[2]*20, miArray[3]*20);
  
  
}
void mousePressed() {
  background(255,255,0);
  text("Aerolab ", 800,500);
}
void keyPressed(){
  if (keyCode == UP) {
    background(255);
    rect((miArray[0]*20+20), miArray[1]*20, miArray[2]*20, miArray[3]*20);
  
  }
}