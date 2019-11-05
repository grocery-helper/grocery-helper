//
//  FoodClass.swift
//  
//
//  Created by Willow Nye on 11/5/19.
//

import Foundation

//maybe struct calender instead? performs calender arithmetic
struct Calendar {
    
}



class FoodItem{
    var foodName: String = ""
    var purchaseDate: Date
    var expirationDate: Date
    var shelfLifeInDays: Int = 0
    var inGroceryList: Bool = false
    var inInventoryList: Bool = false
    var inFavoritesList: Bool = false
    
    func getName() -> String {
        return self.foodName
    }
    func getPurchaseDate() -> String {
        return self.purchaseDate
    }
    func getShelfLife() -> String {
        return self.shelfLifeInDays
    }
    func isInGroceryList() -> Bool  {
        //if in grocerylist -> return true
        //else return false
    }
    func isInInventoryList() -> Bool  {
        //if in inventory list -> return true
        //else return false
    }
    func isInFavoritesList() -> Bool  {
        //if in favorites list return true
        //else return false
    }
    func setExpirationDate() { //takes the shelf life and adds it to the purchase date
        self.expirationDate = self.purchaseDate + self.shelfLifeInDays
    }
    func addToGroceryList() {
        //add to grocery list DB
        self.inGroceryList = true
    }
    func addToInventoryList(){
        //add to inventory list DB
        self.inInventoryList = true
    }
    func addToFavoritesList() {
        //add to favorites list DB
        self.inFavoritesList = true
    }
    
}
