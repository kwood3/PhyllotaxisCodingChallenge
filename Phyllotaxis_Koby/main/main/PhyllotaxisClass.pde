/*******************************************
 Phyllotaxis Coding Challenge - ISC3U
 Finished June 1, 2018
 Written by Koby W.
 
 This is the class that @main uses to display Phyllotaxis.
 The class holds all variables and functions needed for Phyllotaxis
 ********************************************/

class phyllotaxis {
  /* Initializing Variables */
  float n = 0;  // Size of circle on start
  float c;      // Spacing in between circles
  float a;
  float r;
  float x;
  float y;
  float hu;
  float start = 0;
  float centerX;
  float centerY;

  /* Constructor */
  // phyllotaxis(CenterX value, CenterY value, Spacing in between circles)
  phyllotaxis(float centerX_, float centerY_, float c_) {
    centerX = centerX_;
    centerY = centerY_;
    c = c_;
  }

  /* Function that displays the Phyllotaxis */
  void Show() {  
    background(0);               //
    translate(centerX, centerY); // Puts the center circle to where the user wants it to. (Using the x,y parameter in the constructor)
    rotate(n * 0.3);             // 
    for (int i = 0; i < n; i++) {
      a = i * radians(137.5); //
      r = c * sqrt(i);        //
      x = r * cos(a);         //
      y = r * sin(a);         //  In this for() statement, I am using the Phyllotaxis formula, which is explained in
      hu = i+start;           //  the wiki on github. 
      hu = i/3.0 % 360;       //
      fill(hu, 255, 255);     //  I used functions such as sin() (Sine), sqrt() (Square Root), cos() (Cosine) and radians()
      noStroke();             //  to recreate the phyllotaxis formula and be able to display it onto the screen
      ellipse(x, y, 4, 4);    //
    }
    n += 5;     // n is the overall size of the phyllotaxis
    start += 5; // This variable is basically the rate of which the colors change
  }
}
