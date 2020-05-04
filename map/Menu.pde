class Menu {//1. Name

  //2. Attributes
  float menuWidth, menuHeight;
  PFont font;
  int fontSize;
  float textPositionOne;
  float textPositionTwo;
  float textPositionThree;
  float textPositionFour;
  float x,y;
  PImage menu;




  //3. Constructor
  Menu() {
    rectMode(CORNERS);
    font = loadFont("ArialMT-16.vlw");
    fontSize = 16;
    textFont(font, fontSize);
    x = 0; 
    y = 235; 
    menu = loadImage("menu.png");
  }



  //4. Methods
  void display() {
    
    pushStyle();
    imageMode(CORNER);
    image(menu,x,y);
    popStyle();
    
    button1.display();
    button2.display();
    button3.display();
    button4.display();
    fill(0);
    
    textPositionOne = button1.buttonX + button1.eSize/2 + button1.ePadding;
    textPositionTwo = button2.buttonX + button2.eSize/2 + button2.ePadding;
    textPositionThree = button3.buttonX + button3.eSize/2 + button3.ePadding;
    textPositionFour = button4.buttonX + button4.eSize/2 + button4.ePadding;
     
  }
}
