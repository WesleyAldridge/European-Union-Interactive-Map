class MenuButton3 {

  // Attributes
  float eSize;
  float ePadding;
  float buttonX;
  float buttonY;
  boolean isPressed;
  PImage filled;
  PImage unfilled;

  // Constructor
  MenuButton3(float eSize_, float ePadding_) {
    ellipseMode(CENTER);
    fill(255);
    eSize = eSize_;
    ePadding = ePadding_;
    buttonX = 17;              //POSITION BUTTON 3 ON SCREEN
    buttonY = 248+50;
    isPressed = false;
    filled = loadImage("filled.png");
    unfilled = loadImage("unfilled.png");
  }


  // Methods
  void display() {


    if (button1.isPressed == false && button2.isPressed == false && button4.isPressed == false) {            /// if button one+two are FALSE, fill button 3
      pushStyle();
      rectMode(CORNER);
      fill(0, 154, 130);
      rect(0, 285, 175, 25);
      popStyle();
      image(filled, buttonX, buttonY, 20, 20);
      fill(255);
      text("Obesity", menu.textPositionThree, 305);
    }
    else { //if button 1 is TRUE, don't fill button 2
      image(unfilled, buttonX, buttonY, 20, 20);
    }


    if ( ((mouseX < 175 && mouseX > 0) && (mouseY >= 285 && mouseY <= 309)) && !isPressed) {
      pushStyle();
      rectMode(CORNER);
      fill(0, 154, 130, 40);
      rect(0, 285, 175, 25);
      popStyle();
      image(unfilled, buttonX, buttonY, 20, 20);

      if (mousePressed) {
        //if you press button 2 and it is currently FALSE
        isPressed = true; //make button 3 true
        button1.isPressed = false; //make button 1 false
        button2.isPressed = false; //make button 2 false
        button4.isPressed = false; //make button 4 false
        button_func();
      }
    }
  }

  void button_func() {
    if (button3.isPressed == true) {                                 //IF BUTTON 3 IS PRESSED
      for (int i=0; i < countryList.length; i++) {
        countryList[i].imgSize = countryList[i].obesity*2.5;
      }
      countries.controlledSize();
    }
  }
}
