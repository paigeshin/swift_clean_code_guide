//
//  WebserviceFactory.swift
//  PetAdoption
//
//  Created by paige on 2022/01/16.
//

import Foundation

class WebserviceFactory {
    
    func create() -> Webservice {
        let environment = ProcessInfo.processInfo.environment["ENV"]
        if environment == "TEST" {
            return FakeAuthService()
        } else {
            return PetAdoptionService()
        }
    }
    
}
