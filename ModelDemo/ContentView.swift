//
//  ContentView.swift
//  Demo2
//
//  Created by tony giaccone on 7/25/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var model = DataModel()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Fahrenheit: \(model.fahrenheit, specifier: "%.1f")")
            ChildOne()
                .border(.green)

        }
        .environmentObject(model) // Make the theme available through the environment.

        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(DataModel())
    }
}
