//
//  LoginView.swift
//  ToDoList
//
//  Created by Magnus Sanera on 19/11/2024.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            // Header
            GeometryReader { geometry in
                ZStack {
                    RoundedRectangle(cornerRadius: 0)
                        .foregroundColor(Color.pink)
                    VStack {
                        
                    }
                }
                .frame(width: geometry.size.width * 3)
            }.frame(height: 300)
            
            // Login Form
            
            // Register button
        }
    }
}

#Preview {
    LoginView()
}
