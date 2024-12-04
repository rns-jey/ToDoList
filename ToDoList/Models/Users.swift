//
//  Users.swift
//  ToDoList
//
//  Created by JM Arenas on 19/11/2024.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
