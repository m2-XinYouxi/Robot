float armH1 = 60;
float armW1 = 8;
float armL1 = 10;
float armH2 = 5;
float armW2 = 8;
float armL2 = 50;
float armH3 = 3;
float armW3 = 30;
float armL3 = 3;
float armH4 = 3;
float armW4 = 3;
float armL4 = 10;
float armH5 = 3;
float armW5 = 3;
float armL5 = 10;
float l = 0;
float angle1 = 0;
float angle2 = 0;
float angle3 = 0;
float dif = 1;
float speed = 1;

void setup(){
  size(1200, 800, P3D);
  camera(100, 100, 100, 0, 0, 0, 0, 0, -1);
  noStroke();  
}

void draw(){
  background(255);
  
  if(keyPressed){
    if(key == 'a'){
      angle1 = angle1 + dif;
    }
    if(key == 'A'){
      angle1 = angle1 - dif;
    }
    if(key == 'B'){
      angle2 = angle2 + dif;
    }
    if(key == 'b'){
      angle2 = angle2 - dif;
    }
    if(key == 'C'){
      angle3 = angle3 + dif;
    }
    if(key == 'c'){
      angle3 = angle3 - dif;
    }
  }
  
  if(mousePressed){
    if(mouseButton == LEFT && l < armW3-armW4-armW5-1){
      l = l + speed;
    }
    if(mouseButton == RIGHT && l > 0){
      l = l - speed;
    }
    if(mouseButton == CENTER){
      angle1 = 0;
      angle2 = 0;
      angle3 = 0;
      l = 0;
    }
  }

  rotateZ(radians(angle1));
  rotateX(radians(angle2));
  translate(0,0,armH1/2);
  fill(180);
  box(armW1,armL1,armH1);
  
  translate(-armW1/2 -armW2/2 , 0 , armH1/2-armH2/2);
  rotateX(radians(angle3));
  translate( 0, armL2/2-armL1/2, 0);
  fill(160);
  box(armW2,armL2,armH2);
  
  translate( 0, armL2/2 + armL3/2, 0);
  fill(140);
  box(armW3,armL3,armH3);
  
  translate( -armW3/2+armW4/2, armL3/2+armL4/2, 0);
  fill(130);
  box(armW4,armL4,armH4);
  
  translate(armW3-armW5, 0, 0);
  translate(-l, 0, 0);
  fill(120);
  box(armW5,armL5,armH5);
}
