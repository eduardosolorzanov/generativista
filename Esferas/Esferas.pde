/* 
 * Creado por Eduardo Solórzano V.
 * eduardosolorzanov@gmail.com
 * www.github.com/eduardosolorzanov
 *
 */
 
import java.util.Random;
Random generador; //Se utiliza la función random de Java

final static int fps = 60, timer = 120;
float size = 1080;
int tiempo = 0;

void setup() {
  size(1080, 1080);
  frameRate(fps);
  generador = new Random();
  background(255);
}

void draw() {
  
  //Cada frame produce un nuevo número con distribución normal de media = 0 y sd = 1, se convierte a float
  float num = (float) generador.nextGaussian(); 
  //Si la media es el centro vertical de la pantalla y la desviación estándar son 60 pixeles se usa esta fórmula para desestandarizar
  //De esto depende cuánto se esparce la línea
  float sd = 150; 
  float media = width/2;
  
  float y = sd * num + media;
  // Se calcula la x con una distribución uniforme
  float x = random(0, height);
  noStroke();
  fill(0,10); //255 = color negro, 10 = nivel de opacidad
  ellipse(x, y, 40,40);
  
  tiempo = millis()/1000;
  println("Tiempo (s): " + tiempo + "\t\tFrame: " + frameCount +  "\tFps: " + frameRate);
  if (tiempo == timer){
    saveFrame();
    noLoop();
    println("*************** SCREENSHOT ***************");
  };
}

void keyPressed() {
  if (key == 's') {
    saveFrame();
  }
}
