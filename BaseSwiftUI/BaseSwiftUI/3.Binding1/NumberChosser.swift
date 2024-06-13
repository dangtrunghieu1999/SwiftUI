//
//  NumberChosser.swift
//  BaseSwiftUI
//
//  Created by Kai on 02/01/2024.
//

import SwiftUI

struct NumberChosser: View {
    
    @Binding var stepperValue: Int
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.secondary.opacity(0.1))
                .frame(height: 300)
            VStack {
                Stepper(value: $stepperValue, in: 0...20) {
                    Text("Value in child = \(stepperValue)")
                }
                NumberBlock(stepperValue: stepperValue)
            }
            .padding(50)
        }
        .padding()
        .navigationTitle("Binding")
    }
}

#Preview {
    NumberChosser(stepperValue: .constant(3))
}
