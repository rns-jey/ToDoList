//
//  HeaderView.swift
//  ToDoList
//
//  Created by JM Arenas on 21/11/2024.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle: Double
    let bgColor: Color
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(bgColor)
                    .rotationEffect(Angle(degrees: angle))
   
                VStack {
                    Text(title)
                        .font(.system(size: 50))
                        .foregroundStyle(Color.white)
                        .bold()
                    
                    Text(subtitle)
                        .font(.system(size: 30))
                        .foregroundStyle(Color.white)
                }
                .padding(.top, 80)
            }
            .frame(width: geometry.size.width * 3, height: 350)
            .position(x: geometry.size.width / 2, y: 50)
            
            Spacer()
        }.frame(height: 300)
    }
}

#Preview {
    HeaderView(title: "Header", subtitle: "Tagline", angle: -15, bgColor: .blue)
}
