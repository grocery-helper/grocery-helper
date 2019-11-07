//
//  FoodClass.swift
//  
//
//  Created by Willow Nye on 11/5/19.
//

import Foundation

class FoodItem{
    
    var foodName: String
    var purchaseDate: NSDate
    var expirationDate: NSDate
    var shelfLifeInDays: Double
    var inGroceryList: Bool
    var inInventoryList: Bool
    var inFavoritesList: Bool
    
    init() {
        foodName = ""
        purchaseDate = NSDate()
        expirationDate = NSDate()
        shelfLifeInDays = 0
        inGroceryList = false
        inInventoryList = false
        inFavoritesList = false
    }
    
    func getName() -> String {
        return self.foodName
    }
    func getPurchaseDate() -> NSDate {
        return self.purchaseDate
    }
    func getShelfLife() -> Double {
        return self.shelfLifeInDays
    }
    func isInGroceryList() -> Bool  {
        //if in grocerylist -> return true
        //else return false
        return false
    }
    func isInInventoryList() -> Bool  {
        //if in inventory list -> return true
        //else return false
        return false
    }
    func isInFavoritesList() -> Bool  {
        //if in favorites list return true
        //else return false
        return false
    }
    func setExpirationDate() { //takes the shelf life and adds it to the purchase date
        var seconds: TimeInterval
        seconds = 86400 * self.shelfLifeInDays
        self.expirationDate = purchaseDate.addingTimeInterval(seconds)
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
