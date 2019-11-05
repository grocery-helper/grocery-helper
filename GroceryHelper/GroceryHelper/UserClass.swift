//
//  UserClass.swift
//  
//
//  Created by Willow Nye on 11/5/19.
//

import Foundation

class User{
    
    var userName: string
    var Password: string
    
    func getName() -> String{
        return this.userName
    }
    
    func deleteUser() {
        this = nil
    }
    func changePassword(pass:String, newPass:String){
        if (pass == this.Password){
            this.Password = newPass
        }
        else {
            //display ‘incorrect password’
        }
    }
    func Login(pass: String, uname: String) -> Bool{
        if (pass == this.Password && uname == this.userName){
            print(“Login Successful”)
            Return true //proceed to next screen
        }
        else {
            print(“Username or password is incorrect”)
            Return false
        }
    }
    func Logout(){
        //logout stuff
    }
}


