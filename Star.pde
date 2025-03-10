  class Star {
     float x;
     float y;
     float z;
     float pz;
     
     Star() {
       x = random(-width, width);
       y = random(-height, height);
       z = random(width);
     }
     
     void update() {
       z = z - speed; 
       if (z < 1) {
           x = random(-width, width);
           y = random(-height, height);
           z = width;
           pz = z;
       }
     }
     
     void show() {
        fill(255);
        noStroke();
        
        float sx = map(x / z, 0, 1, 0, width);
        float sy = map(y / z, 0, 1, 0, height);
  
        float r = map(z, 0, width, 16, 0);
        
        float px = map(x / pz, 0, 1, 0, width);
        float py = map(y / pz, 0, 1, 0, height);
        
        pz = z;
        
        stroke(255);
        line(px, py, sx, sy);
     }
  }
  
