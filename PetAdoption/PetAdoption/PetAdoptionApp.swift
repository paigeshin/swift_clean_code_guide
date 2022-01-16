//
//  PetAdoptionApp.swift
//  PetAdoption
//
//  Created by paige on 2022/01/16.
//

import SwiftUI

@main
struct PetAdoptionApp: App {
    var body: some Scene {
        WindowGroup {
            let webserviceFactory = WebserviceFactory()
            LoginScreen(loginVM: LoginViewModel(service: webserviceFactory.create()))
        }
    }
}
