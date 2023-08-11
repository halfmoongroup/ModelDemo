//
//  ChildOne\.swift
//  Demo2
//
//  Created by tony giaccone on 8/2/23.
//

import SwiftUI

struct ChildOneView: View {
    var body: some View {
        VStack {
            Text("Child One View")
            ChildOneA()
                .border(.green)
                .padding(5)
        }
        .padding(5)
        .border(.black)

    }
}


struct ChildOneView__Previews: PreviewProvider {
    static var previews: some View {
        ChildOneView()
            .environmentObject(DataModel())
    }
}

