/* 
 * Creado por Eduardo Solórzano V.
 * eduardosolorzanov@gmail.com
 * www.github.com/eduardosolorzanov
 *
 */

class Linea {

  float x1;
  float y1;
  float x2;
  float y2;

  Linea(float x1, float y1, float x2, float y2) {
    this.x1 = x1;
    this.y1 = y1;
    this.x2 = x2;
    this.y2 = y2;

    //print("x: " + x + "y: " + y);
  }

  void step() {

    // El final de la linea ahora va a ser el principio 
    x1 = x2; 
    y1 = y2;
    
    // Se calcula cuanto se va a mover
    int step = 5*int(random(1, 50));
    //println("Step: " + step);

    // Se decide si se aumenta o disminuye
    float num = random(0, 1);
    int direccion = 0;
    if (num > 0.5) {
      direccion = 1;
    } else {
      direccion = -1;
    }

    // Se decide la linea se mueve en x o en y

    num = random(0, 1);
    if (num > 0.5) {
      // Se mueve en X
      x2+= direccion*step;
      
      // Chequeo de límites en x
      
      if (x1 > size - margen) {
        //x1 = size - margen;
        //x2+= -1*step;
      }

      if (x1 < 0 + margen) {
        x1 = 0 + margen;
        x2+= step;
      }
    } else {
      
      // Se mueve en Y
      y2+= direccion*step;
      
      if(y2 > size){
        y2-= direccion*step;
      }

      // Chequeo de límites en y
      if (y1 > size - margen) {
        y1 = size - margen;
        y2+= -1*step;
      }
      if (y1 < 0 + margen) {
        y1 = 0 + margen;
        y2+= step;
      }   
      
    }
  }

  void display() {
    stroke(0);
    strokeWeight(3);
    line(x1, y1, x2, y2);
  }
}
