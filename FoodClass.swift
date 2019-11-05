//
//  FoodClass.swift
//  
//
//  Created by Willow Nye on 11/5/19.
//

import Foundation

class FoodItem{
    var foodName: String
    var purchaseDate: Date
    var expirationDate: Date
    var shelfLifeInDays: Int
    var inGroceryList: Bool
    var inInventoryList: Bool
    var inFavoritesList: Bool
    
    func getName() -> String {
        return this.foodName
    }
    func getPurchaseDate() -> String {
        return this.purchaseDate
    }
    func getShelfLife() -> String {
        return this.shelfLife
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
    void setExpirationDate() { //takes the shelf life and adds it to the purchase date
        this.expirationDate = this.purchaseDate + this.shelfLife
    }
    func addToGroceryList() {
        //add to grocery list DB
        this.inGroceryList = true
    }
    func addToInventoryList(){
        //add to inventory list DB
        this.inInventoryList = true
    }
    func addToFavoritesList() {
        //add to favorites list DB
        this.inFavoritesList = true
    }
    
}
