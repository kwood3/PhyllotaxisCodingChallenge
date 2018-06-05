float n = 0;   // Size of the phyllotaxis
float c = 5;   // Spacing in between circles

ArrayList<PVector> points = new ArrayList<PVector>();

float start = 0;

void setup() {
  size(400, 400);
  colorMode(HSB, 360, 255, 255);
}

void draw() {
  background(0); //background color
  translate(width / 2, height / 2);
  rotate(n * 0.3); //Spin speed
  for (int i = 0; i < n; i++) {
    float a = i * radians(137.5); //spread of arms, #of arms, and speed of rotation of arms
    float r = c * radians(i); //Outwards expansion of arms
    float x = r * sin(a); /twist of arms
    float y = r * tan(a); //Internal bands
    float hu = i+start; //sin(start + i * 0.5);
    hu = i/3.0 % 360; //Color change rate
    fill(hu, 255, 255); //Color change
    noStroke();
    rect(x, y, 4, 4); //Shape and size of squares
  }
  n += 5; //rate of spin and square creation
  start += 5;
}
