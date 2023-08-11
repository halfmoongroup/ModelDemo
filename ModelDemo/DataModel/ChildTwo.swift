//
//  ChildTwo.swift
//  Demo2
//
//  Created by tony giaccone on 8/2/23.
//

import SwiftUI

struct ChildTwo: View {
    @EnvironmentObject var model : DataModel
    var body: some View {
        VStack {
            Text("Child Two")
                .padding(.top, 10)
            Slider(value: $model.celsius, in: -100...100)
                .padding([.leading, .trailing], 10)
            Text("\(model.celsius, specifier: "%.1f") Celsius is \(model.fahrenheit, specifier: "%.1f") Fahrenheit")
            SubView(info: $model.celsius)
            Button("Reset") {
                model.reset()
            }
            .buttonStyle(.borderedProminent)
            .padding(20)

        }
        .border(.blue)
        .padding([.leading, .trailing], 10)

    }
}

struct ChildTwo_Previews: PreviewProvider {
    static var previews: some View {
        ChildTwo()
            .environmentObject(DataModel())
    }
}

