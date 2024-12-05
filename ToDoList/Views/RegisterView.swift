//
//  RegisterView.swift
//  ToDoList
//
//  Created by JM Arenas on 19/11/2024.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewModel()
    
    
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
                    TextField("Full name", text: $viewModel.fullname)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocorrectionDisabled()
                    TextField("Email address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    TextField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(
                        title: "Create Account",
                        bgcolor: .green
                    ) {
                      // Register action
                        viewModel.register()
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
