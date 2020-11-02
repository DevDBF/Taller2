int  numLineas;
int iteraciones;
int contador;
int grosor;
int framespersecond;
int frames;

void setup() {

  numLineas = 120;
  surface.setSize(1280, 720 );
  contador = 0;
  frames = 60;
  
  
}

void draw() {
  framespersecond = 1000/frames;
  clear();
  background(255);
  if (contador >= 7){
    contador = 0;
  }
  grosor =width / (numLineas);
  iteraciones= (width/grosor)+1;
 
  if (contador == 0){
    for (int i = 0; i <iteraciones;i++){
      stroke(0);
      fill(0);
      rect (i*grosor,height/5*1,grosor/2,height/5);
    }
  }
  if (contador == 1){
    for (int i = 0; i <iteraciones;i++){
      stroke(0);
      fill(0);
      rect (i*grosor,height/5*2,grosor/2,height/5);
    }
  }
  if (contador == 2){
    for (int i = 0; i <iteraciones;i++){
      stroke(0);
      fill(0);
      rect (i*grosor,height/5*3,grosor/2,height/5);
    }
  }
  if (contador == 3){
    background(255);
  }
  if (contador == 4 || contador == 5 || contador == 6 ){
    background(0);
  }
  contador++;
  delay(framespersecond);
}

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  println(e);
  if (e==1){
    if(frames >1){
      frames--;
    }
  }
  if (e==-1){
    if(frames <60){
      frames++;
    }
  }
 
}

void mousePressed() {
  if (mouseButton == LEFT) {
    if (numLineas>10){
      numLineas -=10;
    }
  } else if (mouseButton == RIGHT) {
    numLineas+=10;
  } else {
    
  }
}
