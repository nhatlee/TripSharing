//
//  FirebaseServices.swift
//  TripSharing
//
//  Created by nhatlee on 4/4/18.
//  Copyright © 2018 nhatlee. All rights reserved.
//
import FirebaseAuth

class FirebaseService: Client {
    
    var url: String = "https://www.googleapis.com/drive/v3/files"
    var method: String = "GET"
    func login(with email: String, passWord: String, Callback: @escaping AuthCallback) {
        Auth.auth().signIn(withEmail: email, password: passWord) { (user, error) in
            
            guard let userId = user?.uid, let email = user?.email, let token = user?.refreshToken else {return }
            
            let userModel = UserModel(uId: userId, email: email, token: token)
            Callback(userModel)

        }
        
    }
    
    func signup(with email: String, password: String, Callback:@escaping AuthCallback) {
        Auth.auth().createUser(withEmail: email, password: passWord) { (user, error) in
            guard let userId = user?.uid, let email = user?.email, let token = user?.refreshToken else {return }
            
            let userModel = UserModel(uId: userId, name: name, email: email, token: token)
            Callback(userModel)
        }
    }
    
//    func parseUser()
    
}
