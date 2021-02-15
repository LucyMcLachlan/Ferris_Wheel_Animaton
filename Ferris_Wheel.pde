//Lucy McLachlan
//block 1-4a

float cx,cy,x,y,x2,y2;
int fw,fh;
int spokes;
int r,r2;
float lx,ly,lx2,lx3,lx4,ly2,ly3,ly4;
float wx,wy,wx2,wx3,wx4,wy2,wy3,wy4;
int i,d,i2;
int px,py;

void wheel(float x, float y){
 pushMatrix();
    translate(x,y);
    strokeWeight(6);
    noFill();
    stroke(106,72,39);
    ellipse(0,0,r2*2,r2*2);
    wx=-(cos(radians(i2)))*r2;
    wy=(sin(radians(i2)))*r2;
    wx2=-(cos(radians(i2+45)))*r2;
    wy2=(sin(radians(i2+45)))*r2;
    wx3=-(cos(radians(i2+90)))*r2;
    wy3=(sin(radians(i2+90)))*r2;
    wx4=-(cos(radians(i2+135)))*r2;
    wy4=(sin(radians(i2+135)))*r2;
    line(0,0,wx,wy);
    line(0,0,-wx,-wy);
    line(0,0,wx2,wy2);
    line(0,0,-wx2,-wy2);
    line(0,0,wx3,wy3);
    line(0,0,-wx3,-wy3);
    line(0,0,wx4,wy4);
    line(0,0,-wx4,-wy4);
    
    i2=i2+1;
  popMatrix();

}

void candy(float x2,float y2){
  pushMatrix();
  translate(x2,y2);
  fill(227,227,227);
  stroke(227,227,227);
  triangle(-30,-10,-40,-40,-20,-40);
  fill(251,175,204);
  stroke(251,175,204);
  rect(-40,-10,100,60);
  rect(55,-10,50,10);
  fill(187,250,250);
  stroke(187,250,250);
  ellipse(-30,-60,40,50);
  ellipse(-40,-40,10,10);
  ellipse(-20,-40,10,10);
  wheel(35,35);
  fill(0,0,0);
  stroke(0,0,0);
  ellipse(130,-40,20,20);
  line(130,-35,130,50);
  line(130,-15,110,0);
  line(130,10,110,50);
  popMatrix();


}

void cart(float cx, float cy){
pushMatrix();
translate(cx,cy);
stroke(255,255,255);
fill(157,6,196);
line(15,15,15,40);
line(-15,15,-15,40);
triangle(0,0,25,20,-25,20);
rect(-20,35,40,20);
popMatrix();
}

void setup(){
size(800,600);
fw=350;
fh=350;
spokes=4;
r=175;
r2=30;
px=650;
py=500;
}

void draw(){

  background(50,56,108);
  
  //stars
  noStroke();
  fill(252,255,100);
  ellipse(50,40,10,10);
  ellipse(120,130,10,10);
  ellipse(400,200,10,10);
  ellipse(450,40,10,10);
  ellipse(250,240,10,10);
  ellipse(70,230,10,10);
  ellipse(650,170,10,10);
  ellipse(750,40,10,10);
  ellipse(730,240,10,10);
  fill(252,255,170);
  ellipse(700,90,7,7);
  ellipse(560,30,7,7);
  ellipse(600,190,7,7);
  ellipse(500,140,7,7);
  ellipse(400,90,7,7);
  ellipse(300,190,7,7);
  ellipse(330,60,7,7);
  ellipse(200,80,7,7);
  ellipse(160,200,7,7);
  
  //wheel stand
  strokeWeight(10);
  stroke(170,170,170);
  noFill();
  triangle(400,250,300,500,500,500);
  
  //ground
  noStroke();
  fill(80,51,30);
  rect(-10,450,900,220);
  //wheel
  pushMatrix();
  translate(400,250);
  strokeWeight(10);
  noFill();
  stroke(206,152,197);
  ellipse(0,0,fw,fh);
  ellipse(0,0,10,10);
  strokeWeight(5);
  
  lx=-(cos(radians(i)))*r;
  ly=(sin(radians(i)))*r;
  lx2=-(cos(radians(45+i)))*r;
  ly2=(sin(radians(45+i)))*r;
  lx3=-(cos(radians(90+i)))*r;
  ly3=(sin(radians(90+i)))*r;
  lx4=-(cos(radians(135+i)))*r;
  ly4=(sin(radians(135+i)))*r;
  line(0,0,lx,ly);
  line(0,0,-lx,-ly);
  line(0,0,lx2,ly2);
  line(0,0,-lx2,-ly2);
  line(0,0,lx3,ly3);
  line(0,0,-lx3,-ly3);
  line(0,0,lx4,ly4);
  line(0,0,-lx4,-ly4);
  cart(lx,ly);
  cart(-lx,-ly);
  cart(lx2,ly2);
  cart(-lx2,-ly2);
  cart(lx3,ly3);
  cart(-lx3,-ly3);
  cart(lx4,ly4);
  cart(-lx4,-ly4);
    
    i=i-1;
  popMatrix();
  
candy(px,py);
px=px-2;
if(px<-400){
px=1800;
}
}
