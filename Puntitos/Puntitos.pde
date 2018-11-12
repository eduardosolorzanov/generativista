/* 
 * Creado por Eduardo Solórzano V.
 * eduardosolorzanov@gmail.com
 * www.github.com/eduardosolorzanov
 *
 */

// El timer es cada cuantos segundos se toma el screenshot
final static int fps = 100, timer = 120;
float size = 1080;
int tiempo = 0;

Dot dotA = new Dot(size*1/4, size*1/4);
Dot dotB = new Dot(size*3/4, size*1/4);
Dot dotC = new Dot(size*1/4, size*3/4);
Dot dotD = new Dot(size*3/4, size*3/4);

void setup() {
  size(1080, 1080);
  frameRate(fps);
  background(255);
}

void draw() {
  
  dotA.step();
  dotA.display();
  
  dotB.step();
  dotB.display();
  
  dotC.step();
  dotC.display();
  
  dotD.step();
  dotD.display();
  
  tiempo = millis()/1000;
  
  println("Tiempo (s): " + tiempo + "\t\tFrame: " + frameCount +  "\tFps: " + frameRate);
  
  if (tiempo == timer){
    saveFrame("puntos_###.tif");
    noLoop();
    println("*************** SCREENSHOT ***************");
  };
}

void keyPressed() {
  if (key == 's') {
    saveFrame("puntos_###.tif");
  }
}
