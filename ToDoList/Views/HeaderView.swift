//
//  HeaderView.swift
//  ToDoList
//
//  Created by JM Arenas on 21/11/2024.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(Color.pink)
                    .rotationEffect(Angle(degrees: 15))
   
                VStack {
                    Text("To Do List")
                        .font(.system(size: 50))
                        .foregroundStyle(Color.white)
                        .bold()
                    
                    Text("Get things through")
                        .font(.system(size: 30))
                        .foregroundStyle(Color.white)
                }
                .padding(.top, 30)
            }
            .frame(width: geometry.size.width * 3, height: 300)
            .position(x: geometry.size.width / 2, y: 50)
            
            Spacer()
        }.frame(height: 300)
    }
}

#Preview {
    HeaderView()
}
