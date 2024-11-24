//
//  LoginViewModel.swift
//  ToDoList
//
//  Created by JM Arenas on 19/11/2024.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""

    init() {}
}
