class Objetos {

  Objetos() {
  }

  void generarPuntos(int cantidad, color colorEstrellas) {
    for (int i = 0; i < cantidad; i++ ) {
      int x = int(random(0, width));
      int y = int(random(0, height));
      stroke(colorEstrellas);
      point(x, y);
    }
  }

  void generarPlanetas(int cantidad) {
    int tamano;
    int probabilidadDeBlur;
    for (int i = 0; i < cantidad; i++ ) {
      tamano = int(random(1, 6));
      int x = int(random(0, width));
      int y = int(random(0, height));
      noStroke();
      fill(255);
      ellipse(x, y, tamano, tamano);
      // Blurrea con probabilidad de 10%
      probabilidadDeBlur = int(random(1, 10));
      if (probabilidadDeBlur == 1) {
        filter( BLUR, 1);
      }
    }
  }
  
  void generarCirculos(int cantidad, color colorCirculo) {
    float tamano;
    for (int i = 0; i < cantidad; i++ ) {
      tamano = random(1, 4);
      int x = int(random(0, width));
      int y = int(random(0, height));
      noStroke();
      fill(colorCirculo);
      ellipse(x, y, tamano, tamano);
    }
  }
  
  void generarGalaxias(int cantidad, color colorGalaxia) {
    float tamano;
    for (int i = 0; i < cantidad; i++ ) {
      tamano = random(1, 4);
      int x = int(random(0, width));
      int y = int(random(0, height));
      noStroke();
      fill(colorGalaxia);
      translate(width/2, height/2);
      rotate(90);
      ellipse(x, y, tamano + random(5, 8), tamano);
    }
  }
}
