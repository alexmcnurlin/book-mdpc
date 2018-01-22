// Manuale di Programmazione Cinematografica - Volume 1
// Daniele Olmisani, 2016

// Stephen King's Cat's Eye (1985)


final color PAPER = color(15);
final color INK = color(240, 240, 210);


void setup() {
  size(2560, 1080);
  noLoop();
}


void draw() {
  float graphicSize = min(width, 1.10*height);
  float s = 1.35 * graphicSize;
  
  translate(width/2.0, height/2.0);
  
  background(PAPER);
  
  noStroke();
  
  fill(INK);
  ellipse(0, 0, s, 0.75*s);
  
  fill(PAPER);
  ellipse(0, 0, 0.15*s, 0.70*s);
  
  save("cat's-eye.png");
}
