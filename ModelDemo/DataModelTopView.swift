//
//  DataModelTopView.swift
//  ModelDemo
//
//  Created by tony giaccone on 8/11/23.
//

import SwiftUI

struct DataModelTopView: View {
    @StateObject var model = DataModel()

    var body: some View {
        VStack {
            Text( "DataModelTopView")
            Text("Fahrenheit: \(model.fahrenheit, specifier: "%.1f")")
            ChildOneView()
                .border(.green)
        }
        .environmentObject(model) // Make the theme available through the environment.
    }
}


struct DataModelTopView_Previews: PreviewProvider {
    static var previews: some View {
        DataModelTopView()
            .environmentObject(DataModel())
    }
}

