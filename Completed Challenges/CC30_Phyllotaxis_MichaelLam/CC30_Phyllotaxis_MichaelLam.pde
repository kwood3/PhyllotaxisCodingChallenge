// Michael Lam
// June 7, 2018
// Coding Challenge 30: Phyllotaxis

// Declaring variables
float n = 0, c = 3, hue = 0;

// Initial setup
void setup() {
  size(400, 400);
  colorMode(HSB, 360, 255, 255);
  noStroke();
}

// Draw animations
void draw() {
  background(0);
  translate(mouseX, mouseY); // Circle now moveable by mouse
  rotate(n * 10); // Altered rotation factor
  for (int i = 0; i < n; i++) {
    float a = i * radians(137.5);
    float r = c * sqrt(i);
    float x = r * cos(a);
    float y = r * sin(a);
    float hu = i + hue;
    hu = i*3 % 360; // Altered colour scheme
    fill(hu, 255, 255);
    ellipse(x, y, 4, 4);
  }
  n += 5;
  hue += 5;
}
