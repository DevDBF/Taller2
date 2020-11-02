PImage bg;
void setup() {
  size(1249, 700);
  bg = loadImage("background.jpg");
}
int valuer = 255;
int valuebg = 255;
void draw() {
  float x,der,izq,h;
  
  izq=525;
  der=675;
  h=10;
  x=15;
  background(bg);
  strokeWeight(3);
  stroke(valuer, valuebg, valuebg);
  line(490, 0 ,490, 700);  
  line(710, 0 ,710, 700);
  
  strokeWeight(6);
  stroke(1, 1, 1);
  line(530, 0, 400, height);
  
  line(670, 0, 800, height);
  
  for(int i = 1; i<11;i++){
    strokeWeight(2);
    
    line(izq-x, h, der+x, h);
    x=x*1.36;
    h=h*1.59;
  }
  strokeWeight(3);
  stroke(0, 0, 255);
  fill(0,0,255);
  rect(490, 32 ,220, 20);   
  rect(490, 550 ,220, 20);   
  
  
}

void mouseDragged() 
{
  if (valuebg == 255) {
    valuebg = 0;
  }
}
