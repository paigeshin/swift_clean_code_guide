//
//  Webservice.swift
//  PetAdoption
//
//  Created by paige on 2022/01/16.
//

import Foundation

protocol Webservice {
    func authenticate(_ username: String, _ password: String) -> Bool
}

class PetAdoptionService: Webservice {
    
    func authenticate(_ username: String, _ password: String) -> Bool {
        sleep(5)
        return true
    }
    
}

class FakeAuthService: Webservice {
    func authenticate(_ username: String, _ password: String) -> Bool {
        print("FakeAuthService")
        return true 
    }
}
