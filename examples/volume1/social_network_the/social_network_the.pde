// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2016

// The Social Network


final color PAPER = color(60, 90, 150);
final color INK = color(255);


void setup() {
  size(2560, 1080);
  noLoop();
}


void draw() {
  
  
  translate(width/2.0, height/4.0);
  float graphicsWidth;
  float graphicsHeight;
  if (width < 3/4.*height) {
    graphicsWidth = width;
    graphicsHeight = 4/3.*width;
  } else {
    graphicsHeight = height;
    graphicsWidth = 3/4.*height;
  }
  float s = 0.2 * min(graphicsWidth, graphicsHeight);
  
  background(PAPER);
  stroke(INK);
  
  strokeCap(PROJECT);
  strokeJoin(ROUND);
  
  noFill();
  
  strokeWeight(s);
  beginShape();
    vertex(graphicsWidth/5.0, 0);
    vertex(0, 0);
    vertex(0, graphicsHeight/2.0); 
  endShape();
  
  strokeWeight(0.8*s);
  line(-graphicsWidth/8.0, graphicsHeight/4.0, graphicsWidth/5.0, graphicsHeight/4.0);
  
  save("the-social-network.png");
}
