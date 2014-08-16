//
//  main.swift
//  Thinkful-2.1.2
//
//  Created by Christopher Sanders on 7/30/14.
//  Copyright (c) 2014 Chris Sanders. All rights reserved.
//

import Foundation

var myFirstCar = CarFactory();

myFirstCar.setupCarDetailsWithName("Mustang", colorOfCar: "Red", horsepowerOfCar: 200, automaticOptionOfCar: true)

myFirstCar.description()

var mySecondCar = CarFactory()

mySecondCar.setupCarDetailsWithName("BMW", colorOfCar: "Blue", horsepowerOfCar: 300, automaticOptionOfCar: false)

mySecondCar.description()
