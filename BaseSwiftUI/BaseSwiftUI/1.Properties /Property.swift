//
//  Property.swift
//  BaseSwiftUI
//
//  Created by Kai on 02/01/2024.
//

import SwiftUI

struct Property: View {
    let greeting = "Hello from SwiftUI!"
    
    var body: some View {
        Text(greeting)
            .font(.title)
            .padding()
            .navigationTitle("Property")
    }
}

#Preview {
    Property()
}
