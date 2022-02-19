//
//  ContentView.swift
//  TippiLaskin
//
//  Created by Janne Immonen on 12.2.2022.
//

import SwiftUI

struct ContentView: View {
    @State var total = "100"
    @State var tipPercent = 15.0
    var body: some View {
        VStack {
            Text("Tippi Laskin")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            HStack {
                TextField("Amount", text: $total)
                Text("€")
            }
            .padding(.all)
            HStack {
                Slider(value: $tipPercent, in: 1...30, step: 1.0)
                Text("\(Int(tipPercent))%")
            }
            .padding()
            if let totalNum = Double(total) {
                Text("Tipin määrä: \(totalNum * tipPercent / 100.0, specifier: "%0.2f") €")
            } else {
                Text("Anna numeerinen arvo.")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
