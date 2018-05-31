int timer = 0;

phyllotaxis p1;
phyllotaxis p2;

void setup() {
  size(400, 400);
  frameRate(75);
  colorMode(HSB, 360, 255, 55);
  p1 = new phyllotaxis(350, 300, 7);
  p2 = new phyllotaxis(50, 100, 3);
}

void draw() {
  timer++;
  if (timer > 1) {
    timer = 0;
  }
  
  if (timer == 0) {
    p1.Show();
  }
  if (timer == 1){
    p2.Show();
  }
}
