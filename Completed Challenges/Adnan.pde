float n = 0;        // size of the phyotaxis
float c = 3;        // spacing in between circles
float hue = 0;      // rate of how much the colour changes 

void setup() {
  size (400, 400);
  colorMode (HSB, 360, 255, 255);
}
void draw() {
  background (0);
  translate (mouseX, mouseY);
  rotate (n * 200);


  for (int i = 0; i < n; i++) {

    float a = i * radians (137.5);
    float r = c * sqrt (i);
    float x = r * cos (a);
    float y = r * sin (a);

    float hu = i + hue;
    hu = i/3.0 % 400;
    fill (hu, 255, 255);
    noStroke();
    ellipse( x, y, 4, 4);
  }
  n += 5;
  hue += 5;
}
