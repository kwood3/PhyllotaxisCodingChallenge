
//Ya boi andrew Gorcea made the thickest code 

float n = 0;
float c = 3;
float hue = 0;
float v = 1005;


void setup(){
  size (900,900);
  colorMode(HSB, 360, 255, 255);
}

void draw(){
  
  translate(width/2, height/2);
  rotate(n * 0.3);
  
  for (int i = 0; i < n; i++){
  
    float a = i * radians(137.5);
    float r = c * sqrt(i);
    float x = r * cos(a);
    float y = r * sin(a);
    float h = v * sin(a) - 200;
    float m = r * sin(a) + 200;
    float z = r * sin(a) + 200;
    
    
    float hu = i + hue;
    hu = i/3.0 % 360;
    fill(hu, 255, 255);
    noStroke();
    ellipse(x, y, 12, 10);
    rect(m, z, 25, 25);
    rect(h, v, 25, 25);
     
     ellipse(1, 1, 2000, 1);
    
  }
  n += 2;
  hue += 2;
  
}
