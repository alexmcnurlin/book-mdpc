// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2018

// Moana (2016)


final color PAPER = color(225, 205, 160);
final color INK = color(160, 40, 25);


void setup() {
  size(2560, 1080);
  smooth(8);
  noLoop();
}


void draw() {
  
  final float S =  min(width, height);
  final float U = 0.002;
  
  final float T = 30*U;
  
  translate(0.5*width, 0.5*height);
  scale(0.6*S);
  
  background(PAPER);

  fill(INK);  
  noStroke();
  
  for (float a=0; a<2.6*PI; a+=0.1*T) {
    
    float x = 0.06*a*cos(a);
    float y = 0.06*a*sin(a);
    
    ellipse( x,  y, T, T);
    ellipse(-x, -y, T, T);
  }
  
  save("moana.png");
}
