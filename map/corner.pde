class Corner {
boolean pressed;
PImage cornerImage;
PImage cornerHover;
  
  Corner() {
    cornerImage = loadImage("cornervisibledk38389.png");
    cornerHover = loadImage("cornervisibledkhover38389.png");
    pressed = false;
  }

  void display() {
    if (dist(mouseX, mouseY, width, 0) < 38) {
      image(cornerHover, width-(38/2), 38/2);
      if(mousePressed == true) {
       pressed = true; 
      }
    }
    else {
      image(cornerImage, width-(38/2), 38/2);
    }
  }
}
