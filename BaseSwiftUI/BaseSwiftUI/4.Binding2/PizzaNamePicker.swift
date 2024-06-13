//
//  PizzaNamePicker.swift
//  BaseSwiftUI
//
//  Created by Kai on 02/01/2024.
//

import SwiftUI

struct PizzaNamePicker: View {
    
    @Binding var selectedPizzaName: PizzaName
    
    var body: some View {
        Section(header: Text("Select your pizza:").font(.headline)) {
            List(PizzaName.allCases, id: \.self) { pizzaName in
                Button(action: {
                    selectedPizzaName = pizzaName
                }, label: {
                    PizzaNamePickerRow(
                        selectedPizzaName: selectedPizzaName,
                        pizzaName: pizzaName
                    )
                })
                .buttonStyle(.plain)
            }
        }
    }
}

#Preview {
    PizzaNamePicker(selectedPizzaName: .constant(.pepperoni))
}

struct PizzaNamePickerRow: View {
    
    let selectedPizzaName: PizzaName
    let pizzaName: PizzaName
    
    var body: some View {
        HStack {
            Text(pizzaName.rawValue.capitalized)
            Spacer()
            if pizzaName == selectedPizzaName {
                Image(systemName: "checkmark")
            }
        }
        .contentShape(Rectangle())
    }
}
