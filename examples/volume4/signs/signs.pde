// Manuale di Programmazione Cinematografica - Volume 4
// Daniele Olmisani, 2017

// Signs


final color PAPER = color(110, 155, 40);
final color INK = color(205, 230, 150);

void setup() {
  size(2560, 1080);
  noLoop();
}

void draw() {
  
  
  translate(0.5*width, 0.7*height);
  float graphicsWidth;
  float graphicsHeight;
  if (width < 3/4.*height) {
    graphicsWidth = width;
    graphicsHeight = 4/3.*width;
  } else {
    graphicsHeight = height;
    graphicsWidth = 3/4.*height;
  }
 float s = 0.4 * min(graphicsWidth, graphicsHeight);
  
  background(PAPER);
  
  noFill();
  stroke(INK);
  strokeCap(SQUARE);
  strokeWeight(0.2*s);
  
  ellipse(0, 0, s, s);
  arc(0, -1.5*s, 1.7*s, 1.2*s, 0, PI);
  
  line(0, -0.4*s, 0, -1.8*s);
  
  line(-0.8*s, -0.15*s, -0.8*s, 0.15*s);
  line( 0.8*s, -0.15*s,  0.8*s, 0.15*s);
  
  noStroke();
  fill(INK);
  ellipse(0, -1.8*s, 0.5*s, 0.5*s);
  
  save("signs.png");
}
