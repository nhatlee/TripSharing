//
//  LoginViewModel.swift
//  TripSharing
//
//  Created by nhatlee on 4/4/18.
//  Copyright © 2018 nhatlee. All rights reserved.
//

import Foundation
class LoginViewModel {
    private let firebaseService = FirebaseService()
    func login(with email: String, password: String, Callback: @escaping AuthCallback) {
        firebaseService.login(with: email, passWord: password, Callback: Callback)
    }
}
