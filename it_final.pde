Country_Manager countries;
Country[] countryList;
Corner tab;
page2 page2;
backgroundChanger backgroundChanger;

Menu menu;
MenuButton1 button1;
MenuButton2 button2;
MenuButton3 button3;
MenuButton4 button4;


void setup() {
  size(1000, 690);
  background(200);
  smooth(2);
  noStroke();

  countries = new Country_Manager();
  tab = new Corner();
  page2 = new page2();
  backgroundChanger = new backgroundChanger();

  menu = new Menu();
  button1 = new MenuButton1(20, 6); // size, padding
  button2 = new MenuButton2(20, 6);
  button3 = new MenuButton3(20, 6); 
  button4 = new MenuButton4(20, 6); 

  countries.controlledSize();
}

//////////////////////////////////////////////////////////////////////////////////////////////////

void draw() {
  backgroundChanger.display();
  tab.display();
  countries.display();
  menu.display();
   page2.display();
   println(mouseX + ", " + mouseY);
}
