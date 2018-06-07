float n = 0;
float c = 12.7;
float hue = 0;

void setup(){
  
  size(1000,1000);
  colorMode(HSB,360,255,255);
  
}

void draw(){
  
  background(0);
  translate(width/2,height/2);
  rotate(n * 0.3);
  
  for( int i = 0; i < n; i++){
    
    float a = i * radians(137.5);
    float r = c * sqrt(i);
    float x = r * cos(a);
    float y = r * sin(a);
    
    float hu = i + hue;
    hu = i / 3.0 % 360;
    fill(hu,y, n);
    noStroke();
    ellipse(x,y,7,7);
    
  }
  
  n += 10;
  hue += 15;
  
}
