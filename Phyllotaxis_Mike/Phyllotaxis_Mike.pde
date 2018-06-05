float n = 0;   // Size of the phyllotaxis
float c = 5;   // Spacing in between circles
float hue = 0; // Rate of how much the color changes

void setup() {

  size(400, 400);
  colorMode(HSB, 360, 255, 255);
}

void draw() {
  background(0);
  translate(mouseX, mouseY); //translates the phyllotaxis to the center

  for (int i = 0; i < n; i++) {

    float a = i * radians(137.5);
    float r = c * sqrt(i);
    float x = r * cos(a);
    float y = r * sin(a);
    fill(255);
    noStroke();
    ellipse(x, y, 4, 4);
  }
  n += 5;
}