//
//  RegisterView.swift
//  ToDoList
//
//  Created by JM Arenas on 19/11/2024.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "Register",
                           subtitle: "Start organizing to do",
                           angle: -15,
                           bgColor: .orange)
                
                Spacer()
            }
        }
    }
}

#Preview {
    RegisterView()
}
