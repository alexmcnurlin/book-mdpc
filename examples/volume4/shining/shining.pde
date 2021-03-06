// Manuale di Programmazione Cinematografica - Volume 4
// Daniele Olmisani, 2017

// Shining (1980)
// Drama, Horror
// http://www.imdb.com/title/tt0081505/


final color PAPER = color(240, 90, 40);
final color INK = color(0);

final String P = "fflfflfrfrfrfrfrflffl ffrffrflflflflflfrffr fflfflfrfrfrfrfrflffl ffrffrflflflflflfrffr";


void setup() {
  size(2560, 1080);
  noLoop();
}


void draw() {
  
  final float S = min(width, height);
  final float U = 0.002;
  
  float dL = 0.05;
  float dA = PI/3.0;
  
  scale(S);
  translate(-dL, -dL);
  
  background(PAPER);
  
  stroke(INK);
  strokeWeight(10*U);
  
  for (int k=0; k<7; k++) {
    pushMatrix();
    rotate(-PI/6.0);
    for (int i=0; i<7; i++) {
      drawTurtle(P, dL, dA);
    }
    popMatrix();
    translate(0.0, 5*dL);
  }
  
  save("shining.png");
}


void drawTurtle(String path, float dL, float dA) {
  
  for (int i=0; i<path.length(); i++) {
    
    char c = path.charAt(i);
    
    switch (c) {
      case 'f':
        line(0, 0, dL, 0);
        translate(dL, 0);
        break;
      case 'r':
        rotate(dA);
        break;
      case 'l':
        rotate(-dA);
        break;
      default:
    }
  }
}
