
class Snowdrop {

  //------------------//
  // 1. Attributes  //
  //------------------//


  float x, y;   // Variables for location of raindrop
  float speed; // Speed of raindrop
  float co1, co2, co3;     //color will be white(255)
  float r, p;     // Radius of raindrop


  //------------------//
  // 2. Constructors  //
  //------------------//

  Snowdrop() {
    p = 10;                  //other radius for drops to make them rain
    r = 10;                 // radius for drops
    x = random(width);     // Start with a random x location
    y = -r*4;              // Start a little above the window
    speed = random(1, 3);   // Pick a random speed
    co1 = 255;          // Color
    co2 = 255;
    co3 = 255;
  }

  // Move the raindrop down
  void move() {
    // Increment by speed
    y += speed;
  }

  // Check if it hits the bottom
  boolean reachedBottom() {
    // If we go a little beyond the bottom
    if (y > height + r*4) { 
      return true;
    } else {
      return false;
    }
  }

  // Display the raindrop
  void display() {
    // Display the drop
    fill(co1, co2, co3);
    noStroke();
    ellipse(x, y, r, p);
  }

  // If the drop is caught
  void caught() {
    // Stop it from moving by setting speed equal to zero
    speed = 0; 
    // Set the location to somewhere way off-screen
    y = -1000;
  }
  //------------------//
  //     getters      //
  //------------------//
  float getSpeed()
  {
    return speed;
  }

  float getCo1()
  {
    return co1;
  }
  float getCo2()
  {
    return co2;
  }
  float getCo3()
  {
    return co3;
  }
  float getR()
  {
    return r;
  }
  float getP()
  {
    return p;
  }
  //------------------//
  //     setters      //
  //------------------//

  public void setSpeed(float speed)
  {
    this.speed = speed;
  }

  public void setColor(float co1, float co2, float co3)
  {
    this.co1 = co1;
    this.co2 = co2;
    this.co3 = co3;
  }

  public void setRain(float r, float p)
  {
    this.r = r;
    this.p = p;
  }
}
