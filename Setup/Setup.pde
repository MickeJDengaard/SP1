// We declare variables, used to store calorie goal, current calories and selected food
int totalCalories = 2400;
int calorieConsumption = 0;
String selectedFood = "";

//Instansiate CalorieCounter Class
CalorieCounter calorieCounter1 = new CalorieCounter();

void setup() {
  size(400,400);
  //Call the displayText method, with the CalorieCounter instance
  calorieCounter1.displayText();
}

void draw() {
  // Call the design method, with the CalorieCounter instance
  calorieCounter1.design();
}

void keyPressed() {
  // Call the userInput method, with the CalorieCounter instance
  calorieCounter1.userInput();
}
