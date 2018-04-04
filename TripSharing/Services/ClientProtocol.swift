//
//  ClientProtocol.swift
//  TripSharing
//
//  Created by nhatlee on 4/4/18.
//  Copyright © 2018 nhatlee. All rights reserved.
//

protocol Client {
    var url: String { get set }
    var method: String { get set }
    func login(with email: String, passWord: String, Callback:@escaping AuthCallback)
    func signup(with email: String, password: String, Callback:@escaping AuthCallback)
}
