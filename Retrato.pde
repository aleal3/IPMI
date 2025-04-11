PImage img;
void setup (){
  size (800, 400);
  background (255, 255, 255);
  img = loadImage ("foto.jpg");
}
void draw () {
  image (img, 0, 0, 400, 400);
  
  //////////////////////////// a partir de aquí comienza el retrato
  
   noStroke();
   fill (160, 220, 190);
   rect (400, 0, 400, 400);

  ///////////////////////////// cuello
  fill(255, 224, 189); //this is my skin color, copy and paste en los siguientes usos
  rect(590, 200, 20, 30);
  
  ////////////////////////////ears
  fill (210, 160, 120, 200);
  ellipse(545, 150, 25, 35);
  ellipse(655, 150, 25, 35);
  
  ///////////////////////////////cara
  fill (210, 180, 140);
  ellipse(600, 150, 80, 100);
  ellipse(590, 140, 75, 95);
  ellipse(610, 145, 70, 90);
  ellipse(605, 160, 78, 105);
  ellipse(595, 155, 72, 98);
  fill (220, 180, 140); //barbilla
  ellipse(605, 190, 60, 40);
  ellipse(600, 185, 55, 35);
  ellipse(610, 185, 50, 30);
  fill (255, 224, 230, 20); /// pómulos
  ellipse(570, 160, 40, 25);
  ellipse(630, 160, 40, 25);
  fill (210, 180, 140);
  ellipse(600, 115, 70, 30);
  ellipse(590, 110, 65, 25);
  ellipse(610, 120, 60, 35);

////////////////////////////////////////// left eye
  float ojoIzquierdoX = 580;
  float ojoIzquierdoY = 140;
  float escalaOjo = 1.0;

  noStroke();
  fill(255);
  ellipse(ojoIzquierdoX, ojoIzquierdoY, 25 * escalaOjo, 20 * escalaOjo);
  fill(50, 50, 50, 200);
  ellipse(ojoIzquierdoX, ojoIzquierdoY, 18 * escalaOjo, 18 * escalaOjo);
  fill(0);
  ellipse(ojoIzquierdoX, ojoIzquierdoY, 7 * escalaOjo, 7 * escalaOjo);
  fill(255);
  ellipse(ojoIzquierdoX - 3 * escalaOjo, ojoIzquierdoY - 3 * escalaOjo, 2 * escalaOjo, 2 * escalaOjo);
  ellipse(ojoIzquierdoX + 2 * escalaOjo, ojoIzquierdoY - 1 * escalaOjo, 1.5 * escalaOjo, 1.5 * escalaOjo);

  //////////////////////////////// ojo drecho
  float ojoDerechoX = 620;
  float ojoDerechoY = 140;

  noStroke();
  fill(255);
  ellipse(ojoDerechoX, ojoDerechoY, 25 * escalaOjo, 20 * escalaOjo);
  fill(50, 50, 50, 200);
  ellipse(ojoDerechoX, ojoDerechoY, 18 * escalaOjo, 18 * escalaOjo);
  fill(0);
  ellipse(ojoDerechoX, ojoDerechoY, 7 * escalaOjo, 7 * escalaOjo);
  fill(255);
  ellipse(ojoDerechoX - 2 * escalaOjo, ojoDerechoY - 3 * escalaOjo, 2 * escalaOjo, 2 * escalaOjo);
  ellipse(ojoDerechoX + 3 * escalaOjo, ojoDerechoY - 1 * escalaOjo, 1.5 * escalaOjo, 1.5 * escalaOjo);

  ////////////////////////////////// lentes
  stroke(100);
  strokeWeight(3);
  fill(20, 20, 20, 75);
  ellipse(ojoIzquierdoX, ojoIzquierdoY, 30 * escalaOjo, 25 * escalaOjo); /// del ojo izquierdo
  ellipse(ojoDerechoX, ojoDerechoY, 30 * escalaOjo, 25 * escalaOjo); /// del ojo derecho
  //conexión entre los ojos:
  line(ojoIzquierdoX + 15 * escalaOjo, ojoIzquierdoY, ojoDerechoX - 15 * escalaOjo, ojoDerechoY);
  noStroke();
  
  ///////////////////////////////////////// nariz
  fill(255, 224, 180);
  ellipse(600, 165, 15, 25);

  //estas son las fosas nasales
  fill(100, 80, 80, 100);
  ellipse(593, 175, 8, 6);
  ellipse(607, 175, 8, 6);
  
  //////////////////////////////// sonrisa
   noStroke();
   fill(255);
   arc(602, 195, 30, 15, 0, PI);
   noFill ();
   stroke (200, 0, 0);
   arc(602, 195, 30, 15, 0, PIE);
   line (617, 194, 587, 194);
   
   //////////////// cabello
   fill (0);
   noStroke ();
   arc(596, 120, 85, 60, -1 * PI, -0 * PI);

  //////////////////////////////////// torso
  fill(255);
  rect(530, 230, 125, 150);
  
  //////////////////////////// mano
  fill(255, 224, 189);
  noStroke();
  rect(490, 250, 30, 20);
  rect(480, 230, 10, 30);
  rect(510, 230, 10, 30);
  fill(255, 224, 189); 
  
  //////////////////brazo
  noStroke();
  rect(530, 225, 20, 20);
  rect(500, 250, 30, 40);
  rect(530, 235, 20, 20);
  rect(500, 245, 30, 40);
  rect(500, 255, 30, 40);
  rect(510, 245, 30, 40);
}
