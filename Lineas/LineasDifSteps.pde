/* 
 * Creado por Eduardo Solórzano V.
 * eduardosolorzanov@gmail.com
 * www.github.com/eduardosolorzanov
 *
 */

// El timer es cada cuantos segundos se toma el screenshot
final static int fps = 30, timer = 30;
float size = 1080;
int tiempo = 0;
float margen = 10;

Linea l = new Linea(size*1/2, size*1/2, size*1/2, size*1/2);

void setup() {
  size(1080, 1080);
  frameRate(fps);
  background(255);
}

void draw() {

  l.step();
  l.display();
  printStats();
}

void keyPressed() {
  if (key == 's') {
    saveFrame();
  }
}

void printStats() {

  tiempo = millis()/1000;
  println("Tiempo (s): " + tiempo + "\t\tFrame: " + frameCount +  "\tFps: " + frameRate);

  if (tiempo == timer) {
    saveFrame();
    noLoop();
    println("*************** SCREENSHOT ***************");
  };
}
