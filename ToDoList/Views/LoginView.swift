//
//  LoginView.swift
//  ToDoList
//
//  Created by Magnus Sanera on 19/11/2024.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            // Header
            HeaderView()
            
            // Login Form
            Form {
                TextField("Email Address", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            
                Button {
                    // Attempt login
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundStyle(Color.blue)
                        
                        Text("Log In")
                            .foregroundStyle(Color.white)
                            .bold()
                    }
                }
            }
            
            
            
            // Register button
        }
    }
}

#Preview {
    LoginView()
}
