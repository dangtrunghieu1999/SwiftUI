//
//  CardView.swift
//  BaseSwiftUI
//
//  Created by Kai on 25/12/2023.
//

import SwiftUI

struct CardView: View {
    var iconName: String
    var title: String
    var description: String
    
    var body: some View {
        VStack(spacing: 20, content: {
            Image(systemName: iconName)
                .font(.system(size: 60))
                .rotation3DEffect(
                    .degrees(20),
                    axis: (x: 1.0, y: 0.0, z: -0.5)
                )
            VStack(spacing: 10) {
                Text(title)
                    .font(.system(.title2, design: .rounded))
                    .fontWeight(.black)
                Text(description)
                    .font(.body)
                    .fontWeight(.bold)
                    .lineLimit(2)
                    .multilineTextAlignment(.center)
            }
        })
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 200, maxHeight: 200)
        .padding(10)
        .background(Color(red: 200/255, green: 200/255, blue: 230/255))
        .cornerRadius(20)
    }
}

#Preview {
    
    VStack {
        HStack(alignment: .center, spacing: 10) {
            CardView(
                iconName: "character.book.closed.fill",
                title: "Books",
                description: "read, dream, belive, live")
            
            CardView(
                iconName: "music.quarternote.3",
                title: "Music",
                description: "listen, sing, dance"
            )
        }
        
        CardView(
            iconName: "laptopcomputer.and.iphone",
            title: "Programing",
            description: "imagine, create, share, enjoy"
        )
    }
    .padding(10)
    
}
