//
//  BindingChildOneView.swift
//  ModelDemo
//
//  Created by tony giaccone on 8/11/23.
//

import SwiftUI

struct BindingChildOneView: View {
    @Binding var tempf: Float
    var body: some View {
        VStack {
            Text("Binding Child One")
            Text("TempF : \(tempf, specifier: "%.1f")")
            BindingChildOneA(tempf: $tempf)
        }
        .padding(5)
        .border(.black)
    }
}

struct BindingChildOneView_Previews: PreviewProvider {
    struct Container : View {
        @State var data : Float = 0.0
        var body: some View {
            BindingChildOneView(tempf: $data)
        }
    }
    static var previews: some View {
        Container()
    }
}

