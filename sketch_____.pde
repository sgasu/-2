int numRectangles = 20;

void setup() {
  size(400, 400);
  drawMondrian();
}

void drawMondrian() {
  background(255);
  drawLines();
  drawRectangles();
}

void drawLines() {
  stroke(0);
  strokeWeight(10);

  // Vertical lines
  for (int i = 0; i < 3; i++) {
    float x = random(width);
    line(x, 0, x, height);
  }

  // Horizontal lines
  for (int i = 0; i < 3; i++) {
    float y = random(height);
    line(0, y, width, y);
  }
}

void drawRectangles() {
  noStroke();

  for (int i = 0; i < numRectangles; i++) {
    float x = random(width);
    float y = random(height);
    float rectWidth = random(width - x);
    float rectHeight = random(height - y);

    fill(random(255), random(255), random(255));
    rect(x, y, rectWidth, rectHeight);
  }
}

void mousePressed() {
  drawMondrian();
}
