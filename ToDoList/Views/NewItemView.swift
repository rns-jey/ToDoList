//
//  NewItemView.swift
//  ToDoList
//
//  Created by JM Arenas on 19/11/2024.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewModel()
    
    var body: some View {
        VStack {
            Text("New item")
                .font(.system(size: 32))
                .bold()
            
            Form {
                // Title
                TextField("Title", text: $viewModel.title)
                
                // Due date
                DatePicker("Due Date", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                // Button
                TLButton(title: "Save", bgcolor: .blue) {
                    viewModel.save()
                }
                .padding()
                
                
            }
        }
    }
}

#Preview {
    NewItemView()
}
