//
//  RegisterViewModel.swift
//  ToDoList
//
//  Created by JM Arenas on 19/11/2024.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation

class RegisterViewModel: ObservableObject {
    @Published var fullname = ""
    @Published var email = ""
    @Published var password = ""
    
    init() {}
    
    func register() {
        guard validate() else {
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: password) {
            [weak self] result, error in
            
            guard let userId = result?.user.uid else {
                return
            }
            
            self?.newUserRecord(id: userId)
        }
    }
    
    private func newUserRecord(id: String) {
        let newUser = User(id: id, name: fullname, email: email, joined: Date().timeIntervalSince1970)
        
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(id)
            .setData(newUser.asDictionary())
    }
    
    private func validate() -> Bool {
        guard !fullname.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
                  return false
              }
        
        guard email.trimmingCharacters(in: .whitespaces).isValidEmail else {
            
            
            return false
        }
        
        guard password.count >= 8 else {
            return false
        }
        
        return true
    }
}
