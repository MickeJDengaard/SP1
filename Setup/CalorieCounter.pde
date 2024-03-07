ArrayList<Food> foods = new ArrayList<Food>();

ArrayList<Integer> check = new ArrayList<Integer>();

class CalorieCounter {
  int totalCalories = 0;

  // Display text 
  void displayText() {
    background(255);

    // Add food and calories
    addFood("Skyr", 59);
    addFood("Bær", 50);
    addFood("Bagel", 150);
    addFood("Protein Shake", 200);
    addFood("Pålæg", 75);
    addFood("Kylling", 100);
    addFood("Oksekød", 120);
    addFood("Pasta", 200);
    addFood("Ris", 200);
  }

  // Draw the display
  void design() {
    fill(0);
    displayFoodOptions();

    //Draw rectangles on top and bottom 
    rectMode(CENTER);
    stroke(255);
    fill(30, 215, 96);
    rect(200, 25, 410, 50);
    rect(200, 375, 410, 50);


    // Display total calorie count
    textSize(20);
    fill(0);
    text("Total Calories: " + totalCalories, 130, 380);
    
    // Fill color for progress bar 
    fill(255, 165, 0);
    
    // Draw progress bar
    rect(0, 325, totalCalories/3, 25);

    // Display a message if the calorie goal is reached
    if (totalCalories > 2400) {
      textSize(14);
      fill(30, 215, 96);
      text("Calorie goal reached, you have eaten your limit of 2400 calories!", 10, 300);
    }
  }

  // Check userInput
  void userInput() {
    
    // Check if the key pressed is a valid number
    if (key >= '1' || key <= '9') {
      int foodIndex = key - '1';
      
      // Check if the index is valid
      if (foodIndex >= 0 && foodIndex < foods.size()) {
        
        // Update calorie count, with the foods calories
        totalCalories += foods.get(foodIndex).calories;
        
        // Clear background, and show food options
        background(255);
        displayFoodOptions();
        
        //Print chosen food in console
        if (foodIndex <= 9 || foodIndex > 0) {
          Food food = foods.get(foodIndex);
          println(food.name);
        }
      }
      else{ 
        println("Invalid key, try again");
      }
    }
  }

  // Method that adds food options and calories
  void addFood(String name, int calories) {
    foods.add(new Food(name, calories));
  }
}
