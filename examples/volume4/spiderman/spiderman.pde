// Manuale di Programmazione Cinematografica - Volume 4
// Daniele Olmisani, 2016

// Spider-man


final color PAPER = color(135, 0, 0);
final color INK1 = color(0);
final color INK2 = color(240);

final int LINES = 5;


void setup() {
  size(2560, 1080);
  noLoop();
}


void draw() {
  
  float s = 0.01 * min(width, height);
  
  translate(0.5*width, 0.5*height);
  float graphicWidth = 480;
  
  
  background(PAPER);
  stroke(INK1);
  fill(INK2);
  
  strokeWeight(0.5*s);
    
  for (int i=0; i<LINES; i++) {
    rotate(PI/(LINES+1));
    line(-graphicWidth, 0, +graphicWidth, 0);
  }
  
  strokeWeight(s);
  
  resetMatrix();
  translate(width/2.0, height/2.0);
  
  triangle( 5*s, 0,  graphicWidth, -height/5,  graphicWidth, 12*s);
  triangle(-5*s, 0, -graphicWidth, -height/5, -graphicWidth, 12*s);
  
  save("spider-man.png");
}
