//
//  Model.swift
//  Demo2
//
//  Created by tony giaccone on 8/2/23.
//

import Foundation

class DataModel : ObservableObject {
    @Published var celsius: Float
    var fahrenheit: Float {
            let celsius = celsius * 9 / 5 + 32
            return celsius
        }
            
    init() {
        celsius = 0.0
    }
    
    func reset() {
        celsius = 0.0
    }
}
