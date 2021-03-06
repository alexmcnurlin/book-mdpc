// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Slumdog millionaire

final color PAPER = color(0, 0, 0);
final color INK1 = color(120, 60, 255);
final color INK2 = color(225, 225, 225);

void  setup() {
  size(2560, 1080);
  noLoop();
}

void draw() {
  
  translate(width/2.0, 2*height/3.0);

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
  
  stroke(INK2);
  strokeWeight(3.0);
  
  fill(INK1);
  
  line(-width/2.0, -100, width/2.0, -100);
  line(-width/2.0,    0, width/2.0,    0);
  line(-width/2.0,  100, width/2.0,  100);
  
  drawCell(         0, -100, 400, 50);
  drawCell(-graphicsWidth/4.0+75,    0, 150, 50);
  drawCell( graphicsWidth/4.0-75,    0, 150, 50);
  drawCell(-graphicsWidth/4.0+75,  100, 150, 50);
  drawCell( graphicsWidth/4.0-75,  100, 150, 50);
  
  save("slumdog-millionaire.png");
}

void drawCell(float x, float y, float w, float h) {
  
  pushMatrix();
  
  translate(x, y);
  
  float w2 = w/2.0;
  float h2 = h/2.0;
  
  beginShape();
  vertex(-w2,      0);
  vertex(-w2+10, -h2);
  vertex( w2-10, -h2);
  vertex( w2,      0);
  vertex( w2-10,  h2);
  vertex(-w2+10,  h2);
  vertex(-w2,      0);
  endShape();
  
  popMatrix();
}
