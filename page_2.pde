class page2 {
  PFont font16;
  PFont font28;
  PFont arrow16;
  String back;

  page2() {
    font16 = loadFont("ArialMT-16.vlw");
    font28 = loadFont("ArialMT-28.vlw");
    arrow16 = loadFont("Batang-16.vlw");
    back = "<= back";
  }
  void display() {
    if (tab.pressed == true) {
      background(40);

      collisionArrow();

      pushStyle();
      textFont(font28);
      fill(255);
      textAlign(CENTER);
      text("Designed by Wesley Aldridge", width/2, 100); //word, x ,y
      textFont(font16);
      text("https://github.com/wesleytaldridge", width/2, 130);

      textAlign(LEFT);
      text("Data retrieved from", width/2-200, 180);

      fill(0, 210, 177);
      text("CIA World Fact Book", width/2-200, 220);
      fill(255);
      text("https://www.cia.gov/library/publications/the-world-factbook/", width/2-200, 240);

      fill(0, 210, 177);
      text("Europeans and Their Languages", width/2-200, 280);
      fill(255);
      text("published February 2006 by the European Commission", width/2-200, 300);
      text("http://ec.europa.eu/public_opinion/archives/ebs/ebs_243_en.pdf", width/2-200, 320);

      popStyle();
    }
  }


  void collisionArrow() {
    if (mouseX > 476 && mouseX < 523 && mouseY > 368 && mouseY < 393) {
      pushStyle();
      stroke(70);
      fill(60);
      rectMode(CENTER);
      textFont(arrow16);
      rect(width/2, 380, 45, 23, 100);    //690 height
      fill(0, 210, 177);
      textAlign(CENTER);
      text("<--", width/2, 385);
      popStyle();
      if (mousePressed) {
        tab.pressed = false;
      }
    }
    else {
      pushStyle();
      stroke(70);
      fill(60);
      rectMode(CENTER);
      textFont(arrow16);
      rect(width/2, 380, 45, 23);    //690 height
      fill(255);
      textAlign(CENTER);
      text("<--", width/2, 385);
      popStyle();
    }
  }
}

