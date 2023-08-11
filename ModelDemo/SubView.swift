//
//  SubView.swift
//  ModelDemo
//
//  Created by tony giaccone on 8/2/23.
//

import SwiftUI

struct SubView: View {
    @Binding var info: Float
    var body: some View {
        VStack{
            Text("Temp C: \(info, specifier: "%.1f")")
        }
        .padding(15)
        .border(.red)
    }
}

struct SubView_Previews: PreviewProvider {
    static var previews: some View {
        SubView( info: .constant(0.5))
    }
}
