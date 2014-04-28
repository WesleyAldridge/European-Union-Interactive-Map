class MenuButton1 {

  // Attributes
  float eSize;
  float ePadding;
  float buttonX;
  float buttonY;
  boolean isPressed;
  PImage filled;
  PImage unfilled;


  // Constructor
  MenuButton1(float eSize_, float ePadding_) {
    ellipseMode(CENTER);
    fill(255);
    eSize = eSize_;
    ePadding = ePadding_;
    buttonX = 17;                //POSITION BUTTON ON SCREEN
    buttonY = 248;
    isPressed = true;
    filled = loadImage("filled.png");
    unfilled = loadImage("unfilled.png");
  }


  // Methods
  void display() {


    if (button2.isPressed == false && button3.isPressed == false && button4.isPressed == false) {
      pushStyle();
      rectMode(CORNER);
      fill(0, 51, 153);
      rect(0, 235, 175, 25);
      popStyle();
      image(filled, buttonX, buttonY, 20, 20);
      fill(255);
      text("Population", menu.textPositionOne, 255); //word, x ,y
    }
    else {
      image(unfilled, buttonX, buttonY, 20, 20);
    }



    if ( ((mouseX < 175 && mouseX > 0) && (mouseY >= 235 && mouseY <= 259)) && !isPressed) {
      pushStyle();
      rectMode(CORNER);
      fill(0, 51, 153, 40);
      rect(0, 235, 175, 25);
      popStyle();
      image(unfilled, buttonX, buttonY, 20, 20);

      if (mousePressed) {
        isPressed = true;
        button2.isPressed = false;
        button3.isPressed = false;
        button4.isPressed = false;
        button_func();
      }
    }
  }

  void button_func() {
    if (isPressed == true) {                                 //IF BUTTON 1 IS PRESSED
      for (int i=0; i < countryList.length; i++) {
        countryList[i].imgSize = countryList[i].population/500000; //500k
      }
      countries.controlledSize();
    }
  }
}

