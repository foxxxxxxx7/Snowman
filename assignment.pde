import javax.swing.*;//java API's
Snowdrop[] drops = new Snowdrop[1000];// An array of drops
Snowman[] man ;// An array of snowmen
int num = Integer.parseInt(JOptionPane.showInputDialog("How many Snowmen do you wish to see? No more than 9 recommended ", "3"));//ask user to enter the number of snowmen and store in a variable called num
int totalDrops = 0;// New variable to keep track of total number of drops
int col1 = Integer.parseInt(JOptionPane.showInputDialog("This is where we choose a hat color. Please enter a value between 1 and 255 for the red value ", "0"));//choose red value
int col2 = Integer.parseInt(JOptionPane.showInputDialog("This is where we choose a hat color. Please enter a value between 1 and 255 for the blue value ", "0"));//choose blue value
int col3 = Integer.parseInt(JOptionPane.showInputDialog("This is where we choose a hat color. Please enter a value between 1 and 255 for the green value ", "0"));//choose green value
float b1= 563;//starting position for smile dots
float b2 = 545;
int petalWidth = 100;//flower petal size
color petalCol_a = color(34, 100, 255);//flower colors
color petalCol_b = color(123, 45, 78);
color centerCol_a = color(255, 255, 0);
int centerWidth_a = 30;//sizes for flower again
String name2 = "Fox";
String name1 = "Rob";
String studid1 = "20088034";

void setup() 
{
  size(900, 900);//set window size

  println("My name is "  +name1, name2+ " in capitals that looks like " +name1.toUpperCase(), name2.toUpperCase() +" and my "+ studid1.length()+ " digit student number is " +studid1  );//just adding some string methods in here
}


void draw() 
{
  int x = width/(num+1);//x value for snowman is the width devides by the number of snowmen +1,e.g 2 snowman are put of .3 and .6 of the width of the screen (divided by 3)
  man = new Snowman[num]; //draw array of snowmen (by ammount chosen by user)
  for (int i = 0; i<num; i++) {//for loop
    man[i] = new Snowman(x);//place the snowmen at positon x that we set after the number of snowmen is chosen
    man[i].setHatColor(col1, col2, col3);//set hat color using the values input by user
    man[i].setBut1(b1);
    man[i].setBut2(b2);
    x+=width/(num+1);//x equals the width divided by the number of snowmen plus 1
  }

  background(0);//Winter
  ground(255, 255, 255);//snowy ground
  moon(250, 200, 400, 400);//draw a big moon

  darkCloud(250, 70);
  darkCloud(150, 110);
  darkCloud(300, 120);
  darkCloud(600, 110);
  darkCloud(750, 100);
  darkCloud(665, 50);
  darkCloud(200, 150);
  darkCloud(50, 50);
  darkCloud(0, 80);
  darkCloud(0, 0);
  darkCloud(0, 28);
  darkCloud(450, 0);
  darkCloud(450, 30);
  darkCloud(430, 40);
  darkCloud(400, 10);
  darkCloud(420, 180);
  darkCloud(440, 200);
  darkCloud(880, 50);
  darkCloud(840, 0);

  if (mouseButton == LEFT) {//Summer
    background(140, 190, 214);//blue
    sun(250, 200, 400, 400);//draw big sun
    ground(96, 128, 56);//green ground


    man = new Snowman[num];
    for (int i = 0; i<num; i++) {//for loop
      man[i] = new Snowman(1000);
    }

    drops[totalDrops] = new Snowdrop();
    totalDrops++ ;
    if (totalDrops >= drops.length) {
      totalDrops = 0;
    }

    for (int i = 0; i < totalDrops; i++ ) { //We no longer move and display all drops, but rather only the “totalDrops”
      drops[i].setRain (0, 0);
    }

    //petals rectangle
    pushMatrix();
    rotate(radians(45));
    fill(petalCol_a);
    ellipse(1100, 100, 20, petalWidth);
    ellipse(1100, 100, petalWidth, 20);
    popMatrix();
    //petals rectangle
    fill(petalCol_b);
    ellipse(710, 850, 20, petalWidth);
    ellipse(710, 850, petalWidth, 20);
    //center of the flower
    fill(centerCol_a);
    ellipse(710, 850, centerWidth_a, centerWidth_a);
  }


  if (mouseButton == RIGHT) {//Autumn
    background(48, 25, 52);//purple
    moon(650, 200, 300, 300);//draw small sun
    ground(101, 67, 33);//brown

    darkCloud(0, 0);
    darkCloud(700, 30);
    darkCloud(710, 50);
    darkCloud(890, 20);
    darkCloud(880, 35);
    darkCloud(300, 0);
    darkCloud(150, 180);
    darkCloud(160, 200);
    darkCloud(175, 175);
    darkCloud(130, 150);
    darkCloud(350, 160);
    darkCloud(370, 140);
    darkCloud(30, 140);
    darkCloud(30, 170);    
    darkCloud(345, 130);
    darkCloud(600, 160);
    darkCloud(750, 150);
    darkCloud(665, 100);

    drops[totalDrops] = new Snowdrop();
    totalDrops++ ;
    if (totalDrops >= drops.length) {
      totalDrops = 0;
    }
    for (int i = 0; i < totalDrops; i++ ) {
      drops[i].move();
      drops[i].display();
      drops[i].setSpeed (4);
      drops[i].setColor (200, 200, 200);
      drops[i].setRain (6, 11);
    }
  }

  if (mouseButton == CENTER) {//Spring
    background(88, 160, 195);//blue sky
    sun(650, 200, 300, 300);//draw small sun
    ground(96, 128, 56);//green

    int k = width/2;
    man = new Snowman[num];
    for (int i = 0; i<num; i++) {//for loop
      man[i] = new Snowman(k);
      man[i].setBut1(b1 - 15);
      man[i].setBut2(b2 + 20);
    }

    lightCloud(160, 130);
    lightCloud(160, 30);
    lightCloud(160, 50);
    lightCloud(350, 0);
    lightCloud(70, 0);
    lightCloud(310, 115);
    lightCloud(650, 140);
    lightCloud(730, 180);
    lightCloud(850, 20);
    lightCloud(200, 150);
    lightCloud(30, 230);
    lightCloud(50, 250);


    drops[totalDrops] = new Snowdrop();
    totalDrops++ ;

    if (totalDrops >= drops.length) {
      totalDrops = 0;
    }

    for (int i = 0; i < totalDrops; i++ ) { //We no longer move and display all drops, but rather only the “totalDrops”
      drops[i].move();
      drops[i].display();
      drops[i].setSpeed (8);
      drops[i].setColor (156, 211, 219);
      drops[i].setRain (3, 11);
    }
  }

  if (keyPressed)//if the key is pressed
  {
    for (int i=0; i < 8; i++)//for loop to draw rows
    {
      for (int j=0; j < 8; j++)//for loop for columns
      { 
        if ((i + j + 1) % 2 == 0)//every even square..
          fill(0);//color black
        else
          fill(255);//all the other ones...(odd) color white
        rect(j*width/8, i*width/8, width/8, width/8);//each square has a size of one eight the width and each position increments at one eight the width each time
      }
    }
    man = new Snowman[num];
    for (int i = 0; i<num; i++) {//for loop
      man[i] = new Snowman(1000);
    }
  }

  for (int i = 0; i<num; i++) {//drawing snowman
    man[i].display();
  }

  drops[totalDrops] = new Snowdrop();// Initialize one drop

  totalDrops++ ;// Increment totalDrops

  // If we hit the end of the array
  if (totalDrops >= drops.length) {
    totalDrops = 0; //Start over
  }

  // Move and display drops
  for (int i = 0; i < totalDrops; i++ ) { //We no longer move and display all drops, but rather only the “totalDrops”
    drops[i].move();
    drops[i].display();
  }
}

//------------------//
//     methods      //
//------------------//
void darkCloud(int x, int y)
{
  fill(100);
  ellipse(x, y, 60, 55);
  ellipse(x+ 50, y, 100, 85);
  ellipse(x + 100, y, 60, 55);
}

void moon (int v, int t, int p, int q)
{

  fill( 254, 252, 215);
  ellipse(v, t, p, q);
}

void sun (int v, int t, int p, int q)
{
  fill( 253, 184, 19);
  ellipse(v, t, p, q);
}


void lightCloud(int x, int y)
{
  fill(255);
  ellipse(x, y, 60, 55);
  ellipse(x+ 50, y, 100, 85);
  ellipse(x + 100, y, 60, 55);
}

void ground(int color1, int color2, int color3)//customize ground color
{
  fill(color1, color2, color3);
  rect(0, 875, 900, 30);
}
