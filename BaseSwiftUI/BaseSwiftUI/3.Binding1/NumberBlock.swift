//
//  NumberBlock.swift
//  BaseSwiftUI
//
//  Created by Kai on 02/01/2024.
//

import SwiftUI

struct NumberBlock: View {
    let stepperValue: Int
    
    var body: some View {
        Image(systemName: "\(stepperValue).square")
            .font(.system(size: 100))
            .foregroundStyle(Color.blue)
            .padding(.bottom, 20)
    }
}

#Preview {
    NumberBlock(stepperValue: 0)
}
