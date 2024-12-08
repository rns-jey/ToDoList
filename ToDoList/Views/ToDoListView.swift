//
//  ToDoListView.swift
//  ToDoList
//
//  Created by JM Arenas on 19/11/2024.
//

import SwiftUI

struct ToDoListView: View {
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button {
                    
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

#Preview {
    ToDoListView()
}
