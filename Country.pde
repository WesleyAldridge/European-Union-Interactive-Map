class Country {

  //Attributes
  float x, y;
  PImage img;
  PImage black;
  PImage hover;
  float imgSize;
  //Integrator size;

  String nameOfCountry;
  int population;
  float obesity;
  float internetUsers;
  float percentSpeakers; ///percentage of population that speaks German


  //Constructor //////////////////////////////////////////////////////////////////////////////////
  Country(String nameOfCountry_, int population_, float obesity_, float internetUsers_, float percentSpeakers_, PImage img_, 
  float x_, float y_) {
    nameOfCountry = nameOfCountry_;
    population = population_;
    obesity = obesity_;
    internetUsers = internetUsers_; 
    percentSpeakers = percentSpeakers_;
    img = img_;
    x=x_;
    y=y_;
    
    imageMode(CENTER);
    imgSize = population/500000; // pop/500k
    //size = new Integrator(population/500000);
    black = loadImage("blackbetter.png");
    hover = loadImage("hover.png");
  }


  //Methods //////////////////////////////////////////////////////////////////////////////////////
  void display() {
    pushStyle();
    fill(0);
    image(black, x, y, 253*(imgSize/242), 253*(imgSize/242));
    image(img, x, y, imgSize, imgSize); // image source, x location, y location, img width, img height
    //collisionImg(x, y, imgSize);

    popStyle();
  }

  /////////////////////////////////////////////////////////////////////////////////
}

