//
//  RegisterView.swift
//  ToDoList
//
//  Created by JM Arenas on 19/11/2024.
//

import SwiftUI

struct RegisterView: View {
    
    @State var fullname = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "Register",
                           subtitle: "Start organizing to do",
                           angle: -15,
                           bgColor: .orange)
                
                // Form
                Form {
                    TextField("Full name", text: $fullname)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocorrectionDisabled()
                    TextField("Email address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    TextField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(
                        title: "Create Account",
                        bgcolor: .green
                    ) {
                      // Register action
                    }
                    .padding()
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    RegisterView()
}
