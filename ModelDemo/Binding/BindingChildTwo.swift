//
//  BindingChildTwo.swift
//  ModelDemo
//
//  Created by tony giaccone on 8/11/23.
//

import SwiftUI

struct BindingChildTwo: View {
    @Binding var tempf : Float
    @State var tempC : Float = 0.0
    
    var body: some View {
        VStack {
            Text("Child Two")
                .padding(.top, 10)
            Slider(value: Binding<Double>(
                get: {
                    Double(self.tempC)
                    
                },
                set: {
                    self.tempC = Float($0)
                    self.tempf = (Float($0) * 9/5) + 32.0
                }
                ), in: -100...100)
                .padding([.leading, .trailing], 10)
            Text("\(tempC, specifier: "%.1f") Celsius is \(tempf, specifier: "%.1f") Fahrenheit")
            SubView(info: $tempC)
            Button("Reset") {
                tempC = 0.0
                tempf = 32.0
            }
            .buttonStyle(.borderedProminent)
            .padding(20)
        }
        .border(.blue)
        .padding([.leading, .trailing], 10)
    }
    func setTemp(value: Double) {
        self.tempC = Float(value)
        self.tempf = Float(value)+32.0 * 5/9
    }
}


struct BindingChildTwo_Previews: PreviewProvider {
    struct Container: View {
        @State var data : Float =  0.0
        var body: some View {
            BindingChildTwo(tempf: $data)
        }
    }
    static var previews: some View {
        Container()
    }
}

