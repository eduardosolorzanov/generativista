/* 
 * Creado por Eduardo Solórzano V.
 * eduardosolorzanov@gmail.com
 * www.github.com/eduardosolorzanov
 *
 */

class Dot{
  
  float x;
  float y;

  Dot(float x, float y){
    
    //x = width/2;
    //y = height/2;
    //x = 540;
    //y = 540;
    this.x = x;
    this.y = y;
    print("x: " + x + "y: " + y);
  }
  
  void step(){
    
    float stepx = random(-2,2);
    float stepy = random(-2,2);
    
    x += stepx;
    y += stepy;
  }
  
  void display(){
    stroke(0);
    point(x, y);
  }
  
}
