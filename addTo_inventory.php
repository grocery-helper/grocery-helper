<?php

  $user = $_POST["username"];
  $item = $_POST["foodname"];

  include 'db_connection.php';
  //move items from grocery list to inventory

  //if item on grocery list is marked then copy entry into inventory

  $sql = "INSERT INTO Inventory (Username, FoodName, Quantity, ShelfLifeInDays) FROM
      GroceryList Username, FoodName, Quantity, ShelfLifeInDays WHERE Username = $username
      AND FoodName = $item";
  //get shelf life data from table and add to current timestamp

  mysqli_query($conn, $sql);

  $result = mysqli_query($conn, "SELECT ShelfLifeInDays FROM FoodItems WHERE FoodName = $item");
  $daysToExpr = mysqli_fetch_field($result);

  $today = date("Y/m/d");

  if($daysToExpr > 1)
  {
    $expiration = $strtotime("+$daysToExpr days", strtotime($today));
  }
  else
  {
    $expiration = $strtotime("+$daysToExpr day", strtotime($today));
  }

  $sql = "UPDATE Inventory SET ExpDate = $expiration WHERE FoodName = $item AND Username = $user";
  if ($conn->query($sql) === TRUE) {
      echo "Item added successfully";
  } else {
      echo "Error adding item: " . $conn->error;
  }

  $conn->close();
?>
