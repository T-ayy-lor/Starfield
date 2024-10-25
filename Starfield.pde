Star[] stars = new Star[20000];
float speed;

void setup() { // the setup() function is called once when the program starts
  size(800, 800); // size() defines the dimension of the display window in units of pixels
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star(); // fill array with stars
  }
}

void draw() { // The draw() function is called directly after setup() and continuously executes the lines of code contained inside its block until the program is stopped or noLoop() is called
  speed = map(mouseX, 0, width, 0, 50); // map(value, start1, stop1, start2, stop2)  re-maps a number form one range to another
  background(0);
  translate(width/2, height/2); // from center // translate(x, y) / translate(x, y, z) specify amount to displace objects within the display window (z: forward/backwards)
  for (int i = 0; i < stars.length; i++) { // call all star's .update() .show()
    stars[i].update();
    stars[i].show();
  }
}
