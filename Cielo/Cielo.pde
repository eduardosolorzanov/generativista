/* 
 * Creado por Eduardo Solórzano V.
 * eduardosolorzanov@gmail.com
 * www.github.com/eduardosolorzanov
 *
 */

final static int fps = 30, timer = 5;
float size = 1080;
int tiempo = 0;

Objetos o;

void setup() {
  size(1080, 1080);
  smooth(5);
  frameRate(fps);
  background(0);

  
  o = new Objetos();
  
  o.generarPlanetas(50);
  // Puntos blancos
  o.generarPuntos(4000, #FFFFFF);
  // Puntos anaranjados
  o.generarPuntos(300, #f88e38);
  // Planetas blancos
  o.generarCirculos(1000, #FFFFFF);
  // Planetas azul claro
  o.generarCirculos(300, #d6eeff);
  // Planetas azul oscuro
  o.generarCirculos(50, #739ff6);
  // Planetas rojos
  o.generarCirculos(300, #e79815);
  // Galaxias
  o.generarGalaxias(100, #FFFFFF);
}

void draw() {


  tiempo = millis()/1000;
  println("Tiempo (s): " + tiempo + "\t\tFrame: " + frameCount +  "\tFps: " + frameRate);
  if (tiempo == timer) {
    saveFrame();
    noLoop();
    println("*************** SCREENSHOT ***************");
  };
}

void keyPressed() {
  if (key == 's') {
    saveFrame();
  }

  if (key == 'b') {
    filter( BLUR, 0.5 );
  }
}
