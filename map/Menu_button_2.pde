class MenuButton2 {

  // Attributes
  float eSize;
  float ePadding;
  float buttonX;
  float buttonY;
  boolean isPressed;
  PImage filled;
  PImage unfilled;
  PImage bg;


  // Constructor
  MenuButton2(float eSize_, float ePadding_) {
    ellipseMode(CENTER);
    fill(255);
    eSize = eSize_;
    ePadding = ePadding_;
    buttonX = 17;             //POSITION BUTTON 2 ON SCREEN
    buttonY = 248+25;
    isPressed = false;
    filled = loadImage("filled.png");
    unfilled = loadImage("unfilled.png");
    bg = loadImage("1000x690_AFRICA_REMOVED_2.png");
  }


  // Methods
  void display() {


    if (button1.isPressed == false && button3.isPressed == false && button4.isPressed == false) {            /// if button one is FALSE, fill button 2
      pushStyle();
      rectMode(CORNER);
      fill(0, 112, 154);
      rect(0, 260, 175, 25);
      popStyle();
      image(filled, buttonX, buttonY, 20, 20);
      fill(255);
      text("Internet Users", menu.textPositionTwo, 280);
    }
    else { //if button 1 & 3 are TRUE, don't fill button 2
      image(unfilled, buttonX, buttonY, 20, 20);
    }

    if ( ((mouseX < 175 && mouseX > 0) && (mouseY >= 260 && mouseY <= 284)) && !isPressed) {
      pushStyle();
      rectMode(CORNER);
      fill(0, 112, 154, 40);
      rect(0, 260, 175, 25);
      popStyle();
      image(unfilled, buttonX, buttonY, 20, 20);

      if (mousePressed) {
        //if you press button 2 and it is currently FALSE
        isPressed = true; //make button 2 true
        button1.isPressed = false; //make button 1 false
        button3.isPressed = false; //make button 3 false
        button4.isPressed = false; //make button 4 false
        button_func();
      }
    }
  }

  void button_func() {
    if (button2.isPressed == true) {                                 //IF BUTTON 2 IS PRESSED
      for (int i=0; i < countryList.length; i++) {
        countryList[i].imgSize = countryList[i].internetUsers *1000000/countryList[i].population *100;
      }
      countries.controlledSize();
    }
  }
}
