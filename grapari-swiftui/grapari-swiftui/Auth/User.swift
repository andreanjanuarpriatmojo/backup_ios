//
//  User.swift
//  grapari-swiftui
//
//  Created by IT Jatim on 05/11/19.
//  Copyright © 2019 IT Jatim. All rights reserved.
//

import SwiftUI
import Combine

class User: ObservableObject {
    
    @Published var username = ""
    @Published var password = ""
    
    var isValid: Bool {
        if username.isEmpty || password.isEmpty {
            return false
        }
        return true
    }
    
    func resetAll() {
        username = ""
        password = ""
    }
}
