//
//  LoginViewModel.swift
//  PetAdoption
//
//  Created by paige on 2022/01/16.
//

import Foundation
import Combine

class LoginViewModel: ObservableObject {
 
    var username = ""
    var password = ""
    @Published var isAuthenticated = false 
    
    var service: Webservice
    
    init(service: Webservice) {
        self.service = service
    }
    
    func login(_ username: String, _ password: String) {
        DispatchQueue.main.async {
            self.isAuthenticated = self.service.authenticate(username, password)
        }
    }
    
}
