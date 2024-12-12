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
        return true
    }
}
