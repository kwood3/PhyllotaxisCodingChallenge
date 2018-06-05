float n = 0;
float c = 3;

ArrayList<PVector> points = new ArrayList<PVector>();

float start = 0;

void setup() {
  size(400, 400);
  colorMode(HSB, 360, 255, 255);
}

void draw() {
  background(0);
  translate(width / 2, height / 2);
  rotate(n * 0.3);
  for (int i = 0; i < n; i++) {
    float a = i * radians(137.5);
    float r = c * radians(i);
    float x = r * sin(a);
    float y = r * tan(a);
    float hu = i+start;
    hu = i/3.0 % 360;
    fill(hu, 255, 255);
    noStroke();
    rect(x, y, 4, 4);
  }
  n += 5;
  start += 5;
}
