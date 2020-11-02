boolean rotating = false;
boolean dissapear = false;
float a = 0;

void setup() {
  size(400, 400);
}

void draw() {
  background(100);
  translate(200, 200);
  rotate(a);
  if (rotating) {
    a += PI/4;
  }
  fill(255, 0, 0);
  noStroke();
  arc(0, 0, 300, 300, 0, PI/4);
  arc(0, 0, 300, 300, PI/2, 3*PI/4);
  arc(0, 0, 300, 300, PI, 5*PI/4);
  arc(0, 0, 300, 300, 3*PI/2, 7*PI/4);
  if (dissapear) {
    fill(0, 255, 255);
  } else {
    fill(255, 255, 0);
  }
  arc(0, 0, 300, 300, PI/4, PI/2);
  arc(0, 0, 300, 300, 3*PI/4, PI);
  arc(0, 0, 300, 300, 5*PI/4, 3*PI/2);
  arc(0, 0, 300, 300, 7*PI/4, TWO_PI);
  arc(0, 0, 300, 300, 9*PI/4, 3*PI/2);
  arc(0, 0, 300, 300, 11*PI/4, TWO_PI);
}

void mousePressed() {
  if (mouseButton == LEFT) {//inicia rotacion
    rotating = !rotating;
  } else if (mouseButton == RIGHT) {//cambia el color
    dissapear = !dissapear;
  }
}
