//
//  TLButton.swift
//  ToDoList
//
//  Created by JM Arenas on 22/11/2024.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let bgcolor: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(bgcolor)
                
                Text(title)
                    .foregroundStyle(Color.white)
                    .bold()
            }
        }
    }
}

#Preview {
    TLButton(title: "Button",
             bgcolor: .green) {
        // Action
    }
}
