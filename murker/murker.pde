int grosor;
int yInicial;

void setup(){
  grosor = 5;
  yInicial = 0;
  surface.setSize(1280, 720 );
}

void draw(){
  println(yInicial);
  int iteraciones = height/grosor;
  for(int i = -1; i<iteraciones;i++){
    if(i%2==0){
      fill(0,0,255);
      stroke(0,0,255);
      rect(0, (i * grosor) + yInicial,width, grosor);  
    }else{
      fill(255, 255, 0);
      stroke(255, 255, 0);
      rect(0, (i * grosor) + yInicial,width, grosor);
      
    }
    
    if(i%2==0){
      fill(0,255,0);
      stroke(0,255,0);
      rect(width/5*1, (i * grosor), width/5, grosor);
    }else{  
      fill(0,255,0);
      stroke(0,255,0);
      rect(width/5*3, (i * grosor) , width/5, grosor);
    }
    
  }
}

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  println(e);
  if (e==1){
    if(yInicial <grosor*2){
      yInicial++;
    }else{
      yInicial = 0;
    }
  }
 
}

void mousePressed() {
  if (mouseButton == LEFT) {
    if (grosor>1){
      grosor --;
    }
  } else if (mouseButton == RIGHT) {
    grosor++;
  } else {
    
  }
}
