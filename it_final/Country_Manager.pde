class Country_Manager {
  PFont font;
  String populationText;
  String internetText;
  String obesityText;
  String germanText;

  //Constructor //////////////////////////////////////////////////////////////////////////////////
  Country_Manager() {
    countryList = new Country[27];
    font = loadFont("ArialMT-16.vlw");
    textFont(font);
    Table data = loadTable("datasheet.csv", "header");
    TableRow row;

    for (int i = 0; i < data.getRowCount(); i++) {
      row = data.getRow(i);
      countryList[i] = new Country(row.getString("Country"), row.getInt("Population"), row.getFloat("% obesity"), 
      row.getFloat("Internet Users (in mil)"), row.getFloat("% Ger speakers"), 
      loadImage(row.getString("img.png")), row.getFloat("x"), row.getFloat("y"));
    }
  }


  void display() {
    for (int i = 0; i < countryList.length; i++) {
      countryList[i].display();
    }
    for (int i = 0; i < countryList.length; i++) {
      if ((dist(countryList[i].x, countryList[i].y, mouseX, mouseY)) < (countryList[i].imgSize/2)) {
        image(countryList[i].img, countryList[i].x, countryList[i].y, countryList[i].imgSize, countryList[i].imgSize);
        image(countryList[i].hover, countryList[i].x, countryList[i].y, countryList[i].imgSize, countryList[i].imgSize);
      }
    }
    for (int i = 0; i < countryList.length; i++) {
      countries.collisionImg(countryList[i].x, countryList[i].y, countryList[i].imgSize, i);
    }
  }


  void controlledSize() {
    for (int i = 0; i < countryList.length; i++) {
      if (button1.isPressed == true) {
        countryList[i].imgSize = int(map(countryList[i].imgSize, 411277/500000, 81147265/500000, 20, 60));
      }
      else if (button2.isPressed == true) {
        countryList[i].imgSize = int(map(countryList[i].imgSize, 35, 88, 20, 50));
      }
      else if (button3.isPressed == true) {
        countryList[i].imgSize = int(map(countryList[i].imgSize, 45, 81, 20, 60));
      }
      else if (button4.isPressed == true) {
        countryList[i].imgSize = int(map(countryList[i].imgSize, 2, 100, 20, 60));
      }
    }
  }


  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // THIS MAKES THE HOVER TEXT APPEAR. ///////////////////////////////////////////////////////////////////////////////////////////
  void collisionImg(float x, float y, float imgSize, int i) {
    if ((dist(x, y, mouseX, mouseY)) < (imgSize/2)) {
      if (button1.isPressed == true) {
        populationText = countryList[i].nameOfCountry + ":" + " " + countryList[i].population/1000000 + " million people";
        if (i == 4) { //If i == 4 (Cyprus), move the textbox to a different location.
          bubbleFormatting(x - (textWidth(populationText))/2 + 10, y, imgSize, i, populationText);
        }
        else {
          bubbleFormatting(x, y, imgSize, i, populationText);
        }
      }
      else if (button2.isPressed ==true) {
        internetText = countryList[i].nameOfCountry + ":" + " " + int(countryList[i].internetUsers*1000000/countryList[i].population*100) + "%";
        if (i == 4) {
          bubbleFormatting(x - (textWidth(internetText))/2 + 10, y, imgSize, i, internetText);
        }
        else {
          bubbleFormatting(x, y, imgSize, i, internetText);
        }
      }
      else if (button3.isPressed == true) {
        obesityText = countryList[i].nameOfCountry + ":" + " " + countryList[i].obesity + "%";
        if (i == 4) {
          bubbleFormatting(x - (textWidth(obesityText))/2 + 10, y, imgSize, i, obesityText);
        }
        else {
          bubbleFormatting(x, y, imgSize, i, obesityText);
        }
      }
      else if (button4.isPressed == true) {
        germanText = countryList[i].nameOfCountry + ":" + " " + countryList[i].percentSpeakers + "%";
        if (i == 4) {
          bubbleFormatting(x - (textWidth(germanText))/2 + 10, y, imgSize, i, germanText);
        }
        else {
          bubbleFormatting(x, y, imgSize, i, germanText);
        }
      }
    }
  }


  void bubbleFormatting(float x, float y, float imgSize, int i, String displayText) { // Formats the bubbles & displays the text
    pushStyle();
    textAlign(CENTER);     
    rectMode(CENTER);
    fill(255);
    stroke(204);
    textFont(font);
    rect(x, y-(imgSize/2)-10-6, textWidth(displayText)+20, 21, 100); //x,y,width,height,roundedness
    noStroke();
    fill(0);
    text(displayText, x, y-(imgSize/2)-10);
    popStyle();
  }
}

