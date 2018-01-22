// Manuale di Programmazione Cinematografica - Volume 1
// Daniele Olmisani, 2016

// Frozen


final color PAPER = color(85, 115, 200);
final color INK = color(240, 240, 240);

final int COUNT = 8;


void setup() {
  size(2560, 1080);
  noLoop();
}


void draw() {
  
  float s = min(width, height) / 48; 
  float graphicWidth = min(width, height);
  
  translate(width/2.0, height/2.0);
  
  background(PAPER);
  
  stroke(INK);
  strokeWeight(s);
  
  for (int i=0; i<COUNT; i++) {
    line(0, 0, 0.4*graphicWidth, 0);
    for (int k=0; k<5; k++) {
      float step = 0.07*k*graphicWidth;
      line(step, 0, step+2*s, 2*s);
      line(step, 0, step+2*s, -2*s);
    }
    rotate(TWO_PI / COUNT);
  }
  
  save("frozen.png");
}
