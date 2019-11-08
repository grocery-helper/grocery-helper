//
//  UserClass.swift
//  
//
//  Created by Willow Nye on 11/5/19.
//

import Foundation

class User{
    
    var userName: String = ""
    var Password: String = ""
    
    func getName() -> String{
        return self.userName
    }
//    func deleteUser() {
//        self = nil
//    }
    func changePassword(pass:String, newPass:String){
        if (pass == self.Password){
            self.Password = newPass
        }
        else {
            //display ‘incorrect password’
        }
    }
    func Login(pass: String, uname: String) -> Bool{
        if (pass == self.Password && uname == self.userName){
            print("Login Successful")
            return true //proceed to next screen
        }
        else {
            print("Username or password is incorrect")
            return false
        }
    }
    func Logout(){
        //logout stuff
    }
}


