<?php
  //TO DO: add feature to add items from favorites to grocery list

  //INPUTS
  $user = $_POST["username"];
  $item = $_POST["foodname"];
  $quantity = $_POST["amount"];

  include 'db_connection.php';

  function isItemExists($item)
  {
    $result = mysqli_query($conn, "SELECT * FROM GroceryList WHERE Username = $user AND
        FoodName = $item");
    return mysqli_num_rows($result);
  }

  function onGroceryListInsertFoodItem($user, $item, $quantity)
  {
    $sql = "INSERT INTO GroceryList (FoodName, ShelfLifeInDays)
      SELECT FoodName, ShelfLifeInDays FROM FoodItems WHERE
      FoodName = $item";
    if ($conn->query($sql) === TRUE) {
        mysqli_query($conn, "UPDATE GroceryList SET Quantity = $quantity AND  WHERE Username = $user AND
            FoodName = $item");
        echo "Item added successfully";
    } else {
        echo "Error adding item: " . $conn->error;
    }
  }

  function onGroceryListUpdateFoodItem($user, $item, $quantity)
  {
    $sql = "SELECT Quantity FROM GroceryList WHERE Username = $user AND
        FoodName = $item";
    $result = mysqli_query($conn, $sql);
    $curQuanity = mysqli_fetch_field($result);
    $newQuantity = $row['Quantity'] + $curquantity;
    $sql = "UPDATE GroceryList SET Quantity = $newQuantity WHERE Username = $user AND
        FoodName = $item";

    if ($conn->query($sql) === TRUE) {
        echo "Item updated successfully";
    } else {
        echo "Error updating item: " . $conn->error;
    }
  }

  if(!isItemExists($name)) //need to get $name from somewhere?
  {
    onGroceryListInsertFoodItem($user, $item, $quantity);
  }
  else
  {
    onGroceryListUpdateFoodItem($user, $item, $quantity);
  }
  $conn->close();
?>
