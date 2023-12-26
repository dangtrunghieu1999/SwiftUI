//
//  ContentView.swift
//  BaseSwiftUI
//
//  Created by Kai on 22/12/2023.
//

import SwiftUI
import WebKit

struct ContentView: View {
    @State private var sliderValue: CGFloat = 50
    private var minSliderValue: CGFloat = 10
    private var maxSliderValue: CGFloat = 100
    
    var body: some View {
        VStack {
            Text("Slider value: \(Int(sliderValue))")
            MySlider(value: $sliderValue, minValue: minSliderValue, maxValue: maxSliderValue)
        }
    }
}

struct ContentView_Perviews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct MySlider: View {
    @Binding var value: CGFloat
    var minValue: CGFloat
    var maxValue: CGFloat
    
    var body: some View {
        HStack {
            Text("\(Int(minValue))")
                .foregroundStyle(.blue)
            Slider(value: $value, in: minValue...maxValue, step: 1)
            Text("\(Int(maxValue))")
                .foregroundColor(.blue)
        }
    }
}
