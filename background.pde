class backgroundChanger {

  PImage bg1, bg2, bg3, bg4;

  backgroundChanger() {
    bg1 = loadImage("1000x690_AFRICA_REMOVED.png");
    bg2 = loadImage("1000x690_AFRICA_REMOVED_2.png");
    bg3 = loadImage("1000x690_AFRICA_REMOVED_3.png");
    bg4 = loadImage("1000x690_AFRICA_REMOVED_4.png");
  }


  void display() {
    if (button1.isPressed) {
      background(bg1);
    }
    if (button2.isPressed) {
      background(bg2);
    }
    if (button3.isPressed) {
      background(bg3);
    }
    if (button4.isPressed) {
      background(bg4);
    }
  }
}

