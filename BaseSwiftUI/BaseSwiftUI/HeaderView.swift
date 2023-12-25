//
//  HeaderView.swift
//  BaseSwiftUI
//
//  Created by Kai on 25/12/2023.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 5){
                Text("Choose")
                    .font(.system(.largeTitle, design:.rounded))
                    .fontWeight(.black)
                Text("Your Plan")
                    .font(.system(.largeTitle, design:.rounded))
                    .fontWeight(.black)
            }
            Spacer()
        }
    }
}

#Preview {
    HeaderView()
}
