void setup() {
  size(1200, 940);
}

void draw() {
  background(255);
  line(840, 0 ,840, 940);  
  line(548, 508 ,548, 800);  //centro vert
  line(548, 400 ,548, 250);  //centro vert2
  line(800, 680 ,800, 338);  //der vert
  line(44, 400 ,44, 560);    //izq vert
  line(44, 560 ,548, 800);
  line(800, 680 ,548, 800);
  float x1,y1,x2,y2;
  x1=44;
  y1=400;
  x2=127;
  y2=440;
  for(int i = 1; i<6;i++){
    line(x1, y1 ,x2, y2);
    line(x1+80, y1-50 ,x2+60, y2-60);
    line(x1+80, y1-50,x1,y2-40);
    line(x2,y2,x2,y2-26);
    x1=x2;
    y1=y2-26;
    x2=x1+84;
    y2=y1+40;
  }
  line(x1, y1 ,x2, y2);
  
  x1=548;
  y1=508;
  x2=631.3;
  y2=468;
  line(x2-83.3, y2-67,x2,y2-26);
  for(int i = 1; i<3;i++){
    line(x1, y1 ,x2, y2);
    line(x2,y2,x2,y2-26);
    
    line(x1-83.3, y1-40 ,x2-83.3, y2-40);
    line(x2-83.3, y2-40,x2-83.3,y2-70);
    
    line(x2-83.3, y2-40,x2,y2);
    x1=x2;
    y1=y2-26;
    x2=x1+84;
    y2=y1-40;
  }
  line(x1-83.3, y1-40 ,x2-83.3, y2-40);
  line(x1, y1 ,x2, y2);
  line(x2-83.3, y2-65,x2-166.6, y2-25);
  
  line(x2-166.6, y2-105,x2-249, y2-65);
  for(int i = 1; i<3;i++){
    line(x2,y2,x2-83.3, y2-40);
    line(x2-83.3, y2-40,x2-83.3,y2-65);
    
    
    line(x2-83.3, y2+40 ,x2-166.6, y2);
    line(x2-166.6, y2,x2-166.6,y2-25);
    
    x1=x2;
    y1=y2-26;
    x2=x1-84;
    y2=y1-40;
  }
  line(x2-83.3, y2+30 ,x2-166.6, y2-10);
  line(x2,y2,x2-83.3, y2-40);
  x1=x2;
  y1=y2;
  
  for(int i = 1; i<6;i++){
    line(x1,y1,x1-83.3, y1+50);
    line(x1-83.3, y1+50,x1-83.3, y1+30);
    x1=x1-83.3;
    y1=y1+30;
  }
  x2=x2-83.3;
  y2=y2-40;
  line(x2,y2,x2-63.3, y2+37);
  x2=x2-83.3;
  y2=y2+30;
  for(int i = 1; i<5;i++){
    line(x2,y2,x2-63.3, y2+37);
    line(x2-83.3, y2+30,x2, y2+70);
    x2=x2-83.3;
    y2=y2+30;
  }
  line(x2,y2,x2-63.3, y2+37);
  
}
