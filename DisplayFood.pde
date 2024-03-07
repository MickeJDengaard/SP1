void displayFoodOptions() {
  textSize(20);

  // Create a variable to store the y position for the first food option
  int yPos = 75;

  // Use a loop to loop through food items in the arraylist
  for (int i = 0; i < foods.size(); i++) {
    // Get the food option at the index
    Food food = foods.get(i);

     //Display food, calorie count, and a number
    text((i + 1) + ". " + food.name + " - " + food.calories + " calories", 20, yPos);

    //Change y position of the text
    yPos += 20;
  }
}
