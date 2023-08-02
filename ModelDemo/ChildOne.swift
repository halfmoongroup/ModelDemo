//
//  ChildOne\.swift
//  Demo2
//
//  Created by tony giaccone on 8/2/23.
//

import SwiftUI

struct ChildOne: View {
    @StateObject var model = DataModel()
    
    var body: some View {
        VStack {
            Text("Child One")
            ChildAAA()
        }
        .padding(5)
        .border(.black)

    }
}


struct ChildOne__Previews: PreviewProvider {
    static var previews: some View {
        ChildOne()
            .environmentObject(DataModel())
    }
}
