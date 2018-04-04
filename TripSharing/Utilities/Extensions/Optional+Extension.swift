//
//  Optional+Extension.swift
//  TripSharing
//
//  Created by nhatlee on 4/4/18.
//  Copyright © 2018 nhatlee. All rights reserved.
//

extension Optional where Wrapped == String {
    func valueOrEmpty() -> String {
        switch self {
        case .some(let value):
            return String(describing: value)
        case .none:
            return ""
        }
    }
}
