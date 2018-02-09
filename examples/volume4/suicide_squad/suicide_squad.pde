// Manuale di Programmazione Cinematografica - Volume 4
// Daniele Olmisani, 2016

// Suicide Squad


final color PAPER = color(175, 20, 25);
final color INK = color(0);

void setup() {
  size(2560, 1080);
  noLoop();
}

void draw() {

  float graphicsWidth;
  float graphicsHeight;
  if (width < 3/4.*height) {
    graphicsWidth = width;
    graphicsHeight = 4/3.*width;
  } else {
    graphicsHeight = height;
    graphicsWidth = 3/4.*height;
  }
  
  float s = 0.02 * min(graphicsWidth, graphicsHeight);
  float l = 4*s;
  translate((width-graphicsWidth)/2.0, (height-graphicsHeight)/2.0);
  
  background(PAPER);
  strokeWeight(s);
  stroke(INK);
  noFill();
  
  translate(0.33*graphicsWidth, 0.33*graphicsHeight);
  line(-l, -l, l, l);
  line(l, -l, -l, l);
  
  resetMatrix();
  translate((width-graphicsWidth)/2.0, (height-graphicsHeight)/2.0);
  translate(0.67*graphicsWidth, 0.33*graphicsHeight);
  line(-l, -l, l, l);
  line(l, -l, -l, l);
  
  resetMatrix();
  translate((width-graphicsWidth)/2.0, (height-graphicsHeight)/2.0);
  translate(0.50*graphicsWidth, 0.45*graphicsHeight);
  rotate(0.1*PI);
  line(3*l, 0, 4*l, 0);
  rotate(0.8*PI);
  line(3*l, 0, 4*l, 0);
  
  resetMatrix();
  translate((width-graphicsWidth)/2.0, (height-graphicsHeight)/2.0);
  translate(0.50*graphicsWidth, 0.45*graphicsHeight);
  arc(0, 0, 7*l, 7*l, 0.1*PI, 0.9*PI);
  
  save("suicide-squad.png");
}
