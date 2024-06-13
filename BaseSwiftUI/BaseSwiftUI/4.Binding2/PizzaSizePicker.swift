//
//  PizzaSizePicker.swift
//  BaseSwiftUI
//
//  Created by Kai on 04/01/2024.
//

import SwiftUI

struct PizzaSizePicker: View {
    
    @Binding var selectedPizzaSize: PizzaSize
    
    var body: some View {
        Section(header: Text("Select your size:").font(.headline)) {
            Picker("", selection: $selectedPizzaSize) {
                ForEach(PizzaSize.allCases, id: \.self) { pizzaSize in
                    Text(pizzaSize.rawValue.capitalized)
                }
            }
            .pickerStyle(.segmented)
        }
    }
}

#Preview {
    PizzaSizePicker(selectedPizzaSize: .constant(.large))
}
