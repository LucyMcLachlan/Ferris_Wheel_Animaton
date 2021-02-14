//Lucy McLachlan
//block 1-4a

float cx,cy;
int fw,fh;
int spokes;
int r;
float lx,ly,lx2,lx3,lx4,ly2,ly3,ly4;
int i,d;

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
  fill(103,67,30);
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
  

}
