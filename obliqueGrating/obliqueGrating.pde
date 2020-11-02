float x, y;
float xStep = 5;
float yStep = 50;
float a, a_;
int num;
boolean stop = true;

void setup(){
  size(800, 600);
  num = int((width/xStep)*(height/yStep));
}

void draw() {
  if (stop){
  background(15, 20 ,30);
  strokeCap(CORNER);
  strokeWeight(xStep);
  int n=0;
  while(n<num){
    stroke(225-225*cos(radians(a)),50-225*cos(radians(a)));
    line(x, y, x,y+yStep);
    
    x+=xStep;
    if(x>width){
      x=xStep/2;
      y+=yStep;
    }
    if(y>=height){
      y=0;
      a=0;
    }
    n++;
    a+=a_;
    }
  a_+=0.02;
  }
}

void mousePressed() {
  if (mouseButton == LEFT) {//Detiene el movimiento 
    stop = !stop;
  }
}
