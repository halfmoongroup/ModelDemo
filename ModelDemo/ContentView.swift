//
//  ContentView.swift
//  Demo2
//
//  Created by tony giaccone on 7/25/23.
//

import SwiftUI

struct ContentView: View {
    @State var tabSelection = 0
    @State var tempf: Float = 32.0

    var body: some View {
        VStack {
            TabView (selection: $tabSelection){
               DataModelTopView()
                    .tag(0)
                    .tabItem {
                        Label("DataModel", systemImage: "ellipsis.rectangle")
                    }
                BindingTopView(temperatureF: $tempf)
                    .tag(1)
                    .tabItem {
                        Label("Binding Data", systemImage: "square.and.arrow.down")
                    }
                
            }

        }


        .padding()
    }
}
/*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(DataModel())
    }
}
*/
