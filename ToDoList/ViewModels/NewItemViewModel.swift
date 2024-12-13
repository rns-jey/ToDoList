//
//  NewItemViewModel.swift
//  ToDoList
//
//  Created by JM Arenas on 19/11/2024.
//

import Foundation
class NewItemViewModel: ObservableObject {
    @Published var title = ""
    @Published var dueDate = Date()
    
    init() {
        
    }
    
    func save()  {
        
    }
    
    var canSave: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        guard dueDate >= Date().addingTimeInterval(-86400) else {
            return false
        }
        
        return true
    }
}
