//
//  BindingChildThree.swift
//  ModelDemo
//
//  Created by tony giaccone on 8/11/23.
//

import SwiftUI

struct BindingChildOneA: View {
    @Binding var tempf: Float
    var body: some View {
        VStack {
            Text("Binding Child OneA")
            Text("TempF : \(tempf, specifier: "%.1f")")
            BindingChildTwo(tempf: $tempf)
                .padding([.bottom],10)
        }
        .padding(5)
        .border(.black)
    }
}

struct BindingChildOneA_Previews: PreviewProvider {
    struct Container : View {
        @State var data : Float = 0.0
        var body: some View {
            BindingChildOneA(tempf: $data)
        }
    }
    static var previews: some View {
        Container()
    }
}

