//
//  LoginScreen.swift
//  PetAdoption
//
//  Created by paige on 2022/01/16.
//

import SwiftUI

struct LoginScreen: View {
    
    @State private var username = ""
    @State private var password = ""
    @StateObject var loginVM: LoginViewModel 
    
    var body: some View {
        
        NavigationView {
            Form {
                TextField("Username", text: $username)
                    .accessibility(identifier: "usernameTextField")
                TextField("Password", text: $password)
                    .accessibility(identifier: "passwordTextField")
                HStack {
                    Spacer()
                    Button("Login") {
                        // perform login
                        loginVM.login(username, password)
                    }
                    .accessibility(identifier: "loginButton")
                    Spacer()
                }
                if loginVM.isAuthenticated {
                    Image(systemName: "lock")
                        .accessibility(identifier: "imageLock")
                }
            }
            .navigationTitle("Login")
        }
        
    }
}

