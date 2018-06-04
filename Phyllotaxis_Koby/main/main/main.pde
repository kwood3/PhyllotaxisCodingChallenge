/**********************************************
 Phyllotaxis Coding Challenge - ISC3U
 Finished June 1, 2018
 Written by Koby W.
 
 This program utilises the phyllotaxis class to display two phyllotaxis onto the screen.
 ***********************************************/

int timer = 0;  //this variable is used to slow down the display of each phyllotaxis. Without it, the program goes crazy.

phyllotaxis p1;  //Initializing Phyloxtaxis from PhyllotaxisClass
phyllotaxis p2;  //^^ ^^        

void setup() {
  size(400, 400);                   // Initializing size of display
  frameRate(75);                    // Limiting framerate of display           
  colorMode(HSB, 360, 255, 55);     // Setting color configuration
  p1 = new phyllotaxis(350, 300, 7);// Using Phylotaxis class: Passing parameters to tell the program where to display Phyllotaxis
  p2 = new phyllotaxis(50, 100, 3); // ^^  phyllotaxis(CenterX, CenterY, Spacing in between circles);
}

void draw() {
  timer++;          // Adding 1 to timer
  if (timer > 1) {  // Reseting timer 
    timer = 0;
  }

  if (timer == 0) {
    p1.Show();      // When timer = 0, Phyllotaxis #1 Updates/Displays
  }
  if (timer == 1) {
    p2.Show();      // When timer = 1, Phyllotaxis #2 Updates/Displays
  }
}
