class Corner {
boolean pressed;
PImage cornerImage;
PImage cornerHover;
  
  Corner() {
    cornerImage = loadImage("cornervisibledk.png");
    cornerHover = loadImage("cornervisibledkhover.png");
    pressed = false;
  }

  void display() {
    if (dist(mouseX, mouseY, width, 0) < 75) {
      image(cornerHover, width-(75/2), 75/2);
      if(mousePressed == true) {
       pressed = true; 
      }
    }
    else {
      image(cornerImage, width-(75/2), 75/2);
    }
  }
}

