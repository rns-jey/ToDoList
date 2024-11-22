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
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "To Do List",
                           subtitle: "Get things done",
                           angle: 15,
                           bgColor: .pink)
                
                // Login Form
                Form {
                    TextField("Email Address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                
                    TLButton(
                        title: "Login",
                        bgcolor: .blue
                    ) {
                      // Login action
                    }
                    .padding()
                }
                .offset(y: -20)
                
                // Register button
                VStack {
                    Text("New around here?")
                    
                    NavigationLink("Create an Account", destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
