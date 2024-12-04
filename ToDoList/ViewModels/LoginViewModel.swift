//
//  LoginViewModel.swift
//  ToDoList
//
//  Created by JM Arenas on 19/11/2024.
//

import FirebaseAuth
import Foundation

extension String {
    var isValidEmail: Bool {
        let emailRegEx = "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}$"
        let emailPred = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: self)
    }
}

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""

    init() {}
    
    func login() {
        errorMessage = ""
        guard
            !email.trimmingCharacters(in: .whitespaces).isEmpty,
            !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            
            errorMessage = "Username and password is required."
            
            return
        }
        
        guard email.trimmingCharacters(in: .whitespaces).isValidEmail else {
            errorMessage = "Please input a valid email"
            
            return
        }
        
        print("Success!")
    }
    
    private func validate() {
        
    }
}
