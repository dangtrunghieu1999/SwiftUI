//
//  Numbers.swift
//  BaseSwiftUI
//
//  Created by Kai on 02/01/2024.
//

import SwiftUI

struct Numbers: View {
    @State private var stepperValue = 0
    
    var body: some View {
        VStack {
            Text("Parent view Value = \(stepperValue)")
                .font(.title)
                .padding()
            
            ExtractedView(stepperValue: $stepperValue)
        }
    }
}

#Preview {
    Numbers()
}

struct ExtractedView: View {
    @Binding var stepperValue: Int
    
    var body: some View {
        NumberChosser(stepperValue: $stepperValue)
    }
}
