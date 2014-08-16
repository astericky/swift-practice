//
//  CarFactory.swift
//  Thinkful-2.1.2
//
//  Created by Christopher Sanders on 7/30/14.
//  Copyright (c) 2014 Chris Sanders. All rights reserved.
//

import Foundation

class CarFactory {
    var name = ""
    var color = ""
    var horsepower = 0
    var automaticOption = ""
    
    func setupCarDetailsWithName(nameOfCar: String, colorOfCar: String, horsepowerOfCar: Int, automaticOptionOfCar: Bool) {
        self.name = nameOfCar
        self.color = colorOfCar
        self.horsepower = horsepowerOfCar
        self.automaticOption = (automaticOptionOfCar ? "Automatic" : "Manual")
    }
    
    func description() {
        println("My \(name) is \(color) and has \(horsepower) horsepowers and is \(automaticOption)")
    }
}