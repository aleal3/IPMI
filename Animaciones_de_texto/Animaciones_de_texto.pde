////////////////////////////////////////////TP2 DE ALEJANDRO TAMAYO - LEGAJO 122913/2 - DOCUMENTO 82224120
PImage[] imagenes = new PImage[5];
String[] textos = { "SPINNING COSMOS\nluz y movimiento", "Esta escultura realizada por\nPaul Friedlander, es una escultura\ncinética con ondas luminosas\npara crear patrones cambiantes", "Paul (físico y artista británico)\ncombina principios científicos\ncon creatividad para\ntransformar la luz en esculturas\ndinámicas", "Spinning cosmos\nes un universo a contemplar,\ntodo a través de\nluz y movimiento", "Texto 5" };
String[] nombresImagenes = {
//////////////////////////////////////////////////////////////ingrear las imágenes
  "imagen1.jpg",
  "imagen2.jpg",
  "imagen3.jpg",
  "imagen4.jpg",
  "imagen5.jpg"
};

int pantallaActual = 0;
//////////////////////////////////////////////////////tiempo de 6 segundos, se mide en milisegundos y la hacemos variable
int tiempoPorPantalla = 6000;
int inicioPantalla;
boolean mostrarBoton = false;

void setup() {
  size(640, 480);
  for (int i = 0; i < 5; i++) {
    imagenes[i] = loadImage(nombresImagenes[i]);
  }
  inicioPantalla = millis();
}
//////////////////////////////////////////////////////insertar las imágenes a la pantalla por sus nombres ya ingresados anteriormente
void draw() {
  background(0);
  
  if (pantallaActual < 4) {
    image(imagenes[pantallaActual], 0, 0, width, height);
    animarTexto(pantallaActual);
    
    if (millis() - inicioPantalla > tiempoPorPantalla) {
      pantallaActual++;
      inicioPantalla = millis();
    }
  } else {
    mostrarBoton = true;
    mostrarPantallaFinal();
  }
}

void animarTexto(int idx) {
  String txt = textos[idx];
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(40);
 //////////////////////////////////////////////////////////////////cambio de pantalla
  switch(idx) {
    case 0:
      float x = width/2 + sin(millis() * 0.005) * 100;
      text(txt, x, height/2);
      break;
    case 1:
      float alpha = map(sin(millis() * 0.005), -1, 1, 50, 255);
      fill(255, alpha);
      text(txt, width/2, height/2);
      break;
    case 2:
      float escala = map(sin(millis() * 0.005), -1, 1, 1, 2);
      pushMatrix();
      translate(width/2, height/2);
      scale(escala);
      text(txt, 0, 0);
      popMatrix();
      break;
    case 3:
      float y = height/2 + cos(millis() * 0.005) * 100;
      text(txt, width/2, y);
      break;
    case 4:
      textSize(map(sin(millis() * 0.005), -1, 1, 30, 60));
      text(txt, width/2, height/2);
      break;
  }
}
////////////////////////////////////////////////////////////////última pantalla o imagen
void mostrarPantallaFinal() {
  background(0);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(32);
  text("THX FOR WATCHING\n(made by ale)", width/2, height/2 - 40);
  
  fill(100, 200, 255);
  rect(width/2 - 60, height/2 + 10, 120, 40);
  fill(0);
  text("Restart", width/2, height/2 + 30);
}
/////////////////////////////////////////////////////////////////se muestra el botón de restart o reiniciar
void mousePressed() {
  if (mostrarBoton &&
      mouseX > width/2 - 60 && mouseX < width/2 + 60 &&
      mouseY > height/2 + 10 && mouseY < height/2 + 50) {
    pantallaActual = 0;
    inicioPantalla = millis();
    mostrarBoton = false;
  }
}
