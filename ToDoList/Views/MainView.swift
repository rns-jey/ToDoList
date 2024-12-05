//
//  ContentView.swift
//  ToDoList
//
//  Created by JM Arenas on 15/11/2024.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            TabView {
                ToDoListView()
                    .tabItem{
                        Label(
                            "Home",
                            systemImage: "house"
                        )
                    }
                
                ProfileView()
                    .tabItem{
                        Label(
                            "Profile",
                            systemImage: "person.circle"
                        )
                    }
            }
        } else {
            LoginView()
        }
    }
}

#Preview {
    MainView()
}
