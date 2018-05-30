class phyllotaxis {
  float n = 0;  // speed of circles
  float c; // spacing in between circles
  float a;
  float r;
  float x;
  float y;
  float hu;
  float start = 0;
  float centerX;
  float centerY;

  // constructor
  // phyllotaxis(CenterX value, CenterY value, Spacing in between circles)
  phyllotaxis(float centerX_, float centerY_, float c_) {
    centerX = centerX_;
    centerY = centerY_;
    c = c_;
  }

  void Show() {
    background(0);
    translate(centerX, centerY);
    rotate(n * 0.3);
    for (int i = 0; i < n; i++) {
      a = i * radians(137.5);
      r = c * sqrt(i);
      x = r * cos(a);
      y = r * sin(a);
      hu = i+start;
      hu = i/3.0 % 360;
      fill(hu, 255, 255);
      noStroke();
      ellipse(x, y, 4, 4);
    }
    n += 5;
    start += 5;
  }
}