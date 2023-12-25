//
//  BadgeView.swift
//  BaseSwiftUI
//
//  Created by Kai on 25/12/2023.
//

import SwiftUI

struct BadgeView: View {
    var title: String
    var padding: CGFloat
    var radius: CGFloat
    var rotation: Double
    var xOffset: CGFloat
    var yOffset: CGFloat
    
    var body: some View {
        Text(title)
            .font(.callout)
            .fontWeight(.bold)
            .padding(padding)
            .background(Color(red: 20/255, green: 18/255, blue: 237/255))
            .foregroundColor(.white)
            .cornerRadius(radius)
            .rotationEffect(.degrees(rotation))
            .offset(x: xOffset, y: yOffset)
    }
}

#Preview {
    BadgeView(title: "SwiftUI",
              padding: 5,
              radius: 10,
              rotation: -35,
              xOffset: -125,
              yOffset: -70)
}
