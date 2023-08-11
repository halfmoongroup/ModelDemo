//
//  BindingTopView.swift
//  ModelDemo
//
//  Created by tony giaccone on 8/11/23.
//

import SwiftUI

struct BindingTopView: View {
    @Binding var temperatureF : Float
    var body: some View {
        VStack {
            Text("Binding Top View ")
            Text("Fahrenheit: \(temperatureF, specifier: "%.1f")")
            BindingChildOneView(tempf: $temperatureF)
        }
        .border(.blue)
    }
}


struct BindingTopView_Previews: PreviewProvider {
    struct Container : View {
        @State var data : Float = 0.0
        var body: some View {
            BindingTopView(temperatureF: $data)
        }
    }
    static var previews: some View {
        Container()
    }
}
