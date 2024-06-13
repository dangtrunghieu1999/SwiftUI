//
//  PizzaView.swift
//  BaseSwiftUI
//
//  Created by Kai on 04/01/2024.
//

import SwiftUI

struct PizzaView: View {
    
    @State private var pizza = Pizza()
    
    var body: some View {
        VStack {
            Form {
                PizzaNamePicker(selectedPizzaName: $pizza.name)
                PizzaSizePicker(selectedPizzaSize: $pizza.size)
            }
            Text(pizza.pizzaSelection)
        }
    }
}

#Preview {
    PizzaView()
}
