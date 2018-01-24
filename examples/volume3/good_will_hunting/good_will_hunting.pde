// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Good Will Hunting

final color PAPER = color(60);
final color INK = color(230);

final float SIZE = 5.0;

void setup() {
  size(2560, 1080);
  noLoop();
}

void draw() {
  
  translate(width/2.0, height/2.0);
  float graphicsWidth;
  float graphicsHeight;
  if (width < 3/4.*height) {
    graphicsWidth = width;
    graphicsHeight = 4/3.*width;
  } else {
    graphicsHeight = height;
    graphicsWidth = 3/4.*height;
  }
  
  background(PAPER);
  fill(INK);
  stroke(INK);
  
  strokeWeight(SIZE);
  
  float w1 = graphicsWidth/3.0;
  float w2 = graphicsWidth/6.0;
  
  float h1 = graphicsHeight/5.0;
  float h2 = graphicsHeight/8.0;
  
  lines(-w2, 0, w2, 0, 4*SIZE);
  lines( w2, 0, w1, h2, 4*SIZE);
  lines( w2, 0, w2, h1, 4*SIZE);
  
  save("good-will-hunting.png");
}

void points(float x, float y, float s) {
  ellipse( x,  y, s, s);
  ellipse( x, -y, s, s);
  ellipse(-x,  y, s, s);
  ellipse(-x, -y, s, s);
}

void lines(float x1, float y1, float x2, float y2, float s) {
  line( x1,  y1,  x2,  y2);
  line(-x1,  y1, -x2,  y2);
  line( x1, -y1,  x2, -y2);
  line(-x1, -y1, -x2, -y2);
  points(x1, y1, s);
  points(x2, y2, s);
}
