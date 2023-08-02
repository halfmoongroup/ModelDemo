//
//  ChildAAA.swift
//  Demo2
//
//  Created by tony giaccone on 8/2/23.
//

import SwiftUI

struct ChildAAA: View {
    var body: some View {
        VStack {
            Text("Child AAA")
            ChildTwo()
                .padding([.bottom],10)
        }
    }
}

struct ChildAAA_Previews: PreviewProvider {
    static var previews: some View {
        ChildAAA()
            .environmentObject(DataModel())
    }
}
