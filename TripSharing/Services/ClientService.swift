//
//  ClientService.swift
//  TripSharing
//
//  Created by nhatlee on 4/4/18.
//  Copyright © 2018 nhatlee. All rights reserved.
//

import Foundation
typealias AuthCallback = (_ user: UserModel) -> ()

enum ServiceType {
    case Undifine
    case ServerAPI
    case Firebase
}

class ClientService {
    func loginWith(email: String, password: String, serviceType: ServiceType, Callback: @escaping AuthCallback) {
        var client: Client?
        switch serviceType {
        case .Firebase:
            client = FirebaseService()
        default://handle for my server api
            break;
        }
        client?.login(with: email, passWord: password, Callback: Callback)
    }
    
    func signup(with email: String, password: String, Callback:@escaping AuthCallback) {
        
    }
}

