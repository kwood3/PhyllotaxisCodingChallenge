phyllotaxis p1;
//phyllotaxis p2; //<>//

void setup() {
  size(400, 400);
  colorMode(HSB, 360, 255, 255);
  p1 = new phyllotaxis(200,200, 7);
  //p2 = new phyllotaxis(100,100);
}

void draw() {
  p1.Show();
  //p2.Show();
}