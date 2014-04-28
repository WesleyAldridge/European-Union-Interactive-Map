class MenuButton4 {

  // Attributes
  float eSize;
  float ePadding;
  float buttonX;
  float buttonY;
  boolean isPressed;
  PImage filled;
  PImage unfilled;


  // Constructor
  MenuButton4(float eSize_, float ePadding_) {
    ellipseMode(CENTER);
    fill(255);
    eSize = eSize_;
    ePadding = ePadding_;
    buttonX = 17;              //POSITION BUTTON 4 ON SCREEN
    buttonY = 248+75;
    isPressed = false;
    filled = loadImage("filled.png");
    unfilled = loadImage("unfilled.png");
  }


  // Methods
  void display() {


    if (button1.isPressed == false && button2.isPressed == false && button3.isPressed == false) {            /// if button one+two are FALSE, fill button 4
      pushStyle();
      rectMode(CORNER);
      fill(0, 154, 65);
      rect(0, 310, 175, 26);
      popStyle();
      image(filled, buttonX, buttonY, 20, 20);
      fill(255);
      text("German Speakers", menu.textPositionFour, 330);
    }
    else { //if button 1 is TRUE, don't fill button 2
      image(unfilled, buttonX, buttonY, 20, 20);
    }

    if ( ((mouseX < 175 && mouseX > 0) && (mouseY >= 310 && mouseY <= 336)) && !isPressed) {
      pushStyle();
      rectMode(CORNER);
      fill(0, 154, 65, 40);
      rect(0, 310, 175, 26);
      popStyle();
      image(unfilled, buttonX, buttonY, 20, 20);

      if (mousePressed) {
        //if you press button 2 and it is currently FALSE
        isPressed = true; //make button 2 true
        button1.isPressed = false; //make button 1 false
        button2.isPressed = false; //make button 2 false
        button3.isPressed = false; //make button 3 false
        button_func();
      }
    }
  }

  void button_func() {
    if (button4.isPressed == true) {                                 //IF BUTTON 4 IS PRESSED
      for (int i=0; i < countryList.length; i++) {
        countryList[i].imgSize = countryList[i].percentSpeakers;
      }
      countries.controlledSize();
    }
  }
}

