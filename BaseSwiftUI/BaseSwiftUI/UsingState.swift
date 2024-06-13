//
//  UsingState.swift
//  BaseSwiftUI
//
//  Created by Kai on 29/12/2023.
//

import SwiftUI

struct UsingState: View {
    @State private var counter = 0
    
    var body: some View {
        VStack {
            Text("Counter = \(counter)")
            
            HStack {
                Button(action: {
                    counter -= 1
                }, label: {
                    Image(systemName: "minus.circle")
                })
                
                Button(action: {
                    counter += 1
                }, label: {
                    Image(systemName: "plus.circle")
                })
            }
        }
        .frame(minWidth: 150, minHeight: 100)
        .buttonStyle(.borderless)
        .buttonRepeatBehavior(.enabled)
        .navigationTitle("State")
    }
}

#Preview {
    UsingState()
}
