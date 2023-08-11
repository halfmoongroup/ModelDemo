//
//  ChildAAA.swift
//  Demo2
//
//  Created by tony giaccone on 8/2/23.
//

import SwiftUI

struct ChildOneA: View {
    var body: some View {
        VStack {
            Text("Child DM 1-A")
            ChildTwo()
                .padding([.bottom],10)
        }
    }
}

struct ChildOneA_Previews: PreviewProvider {
    static var previews: some View {
        ChildOneA()
            .environmentObject(DataModel())
    }
}

