//
//  ContentView.swift
//  BaseSwiftUI
//
//  Created by Kai on 22/12/2023.
//

import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
            ScrollView(showsIndicators: false) {
                HStack {
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
                
                ZStack {
                    CardView(
                        iconName: "laptopcomputer.and.iphone",
                        title: "Programing",
                        description: "imagine, create, share, enjoy"
                    )
                    
                    BadgeView(title: "SwiftUI",
                              padding: 5,
                              radius: 10,
                              rotation: -35,
                              xOffset: -125,
                              yOffset: -70)
                    
                    BadgeView(title: "Layout using Stacks",
                              padding: 10,
                              radius: 20,
                              rotation: 0,
                              xOffset: 0,
                              yOffset: 110)
                }
                
                HStack {
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
                
                HStack {
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
                
                HStack {
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
            }
            
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Perviews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
