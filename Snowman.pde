class Snowman
{
  //------------------//
  //  1. Attributes  //
  //-----------------//

  private float x; //variable for snowman position on screen
  private float col1, col2, col3;//variables to change hat color
  private float b1, b2, b3;

  //------------------//
  // 2. Constructors  //
  //------------------//


  public Snowman(float x)
  {

    this.x = x;
    this.col1 = col1;
    this.col2 = col2;
    this.col3 = col3;
    this.b1 = b1;
    this.b2 = b2;
    this.b3 = b3;
  }

  //------------------//
  //     methods      //
  //------------------//
  public void display() 
  {

    fill(255);//fill white again
    //bottom
    noStroke();
    ellipse(x, 800, 200, 200);

    //middle
    ellipse(x, 650, 150, 150);

    //head
    ellipse(x, 530, 100, 100);


    //nose
    fill(255, 165, 0);//orange
    triangle(x - 10, 525, x + 20, 530, x - 10, 535);

    //eyes
    fill(0);//black
    ellipse(x - 20, 510, 10, 10);//left eye
    ellipse(x + 20, 510, 10, 10);// right eye


    //smile
    ellipse(x, b1, 7, 7);//middle
    ellipse(x - 15, 555, 7, 7);// left form middle
    ellipse(x + 15, 555, 7, 7);//right from middle
    ellipse(x - 25, b2, 7, 7);//far left
    ellipse(x + 25, b2, 7, 7);//far right


    //buttons
    ellipse(x, 650, 10, 10);//middle
    ellipse(x, 700, 10, 10);//bottom
    ellipse(x, 600, 10, 10);//top

    //hat
    fill(50);//grey
    rect(x - 25, 435, 50, 50);
    rect(x-50, 485, 100, 10);
    fill(col1, col2, col3);
    rect(x- 25, 475, 50, 10);
  }

  //------------------//
  //     getters      //
  //------------------//
  public float getCol1()
  {
    return col1;
  }
  public float getCol2()
  {
    return col2;
  }
  public float getCol3()
  {
    return col3;
  }
  public float b1()
  {
    return b1;
  }
  public float b2()
  {
    return b2;
  }


  //------------------//
  //     setters      //
  //------------------//

  public void setHatColor(int col1, int col2, int col3) {
    setCol1(col1);
    setCol2(col2);
    setCol3(col3);
  }
  public void setBut1(float b1)
  {
    this.b1 = b1;
  }
  public void setBut2(float b2)
  {
    this.b2 = b2;
  }


  public void setCol1(float col1)
  {
    this.col1 = col1;
  }
  public void setCol2(float col2)
  {
    this.col2 = col2;
  }
  public void setCol3(float col3)
  {
    this.col3 = col3;
  }
}
