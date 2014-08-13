//
//  ViewController.swift
//  Fibonacci
//
//  Created by Christopher Sanders on 8/10/14.
//  Copyright (c) 2014 Chris Sanders. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var theSlider: UISlider!
    @IBOutlet weak var selectedValueLabel: UILabel!
    @IBOutlet weak var outputTextView: UITextView!
    
    // An instance of the model
    var fibo: FibonacciModel = FibonacciModel()
    
    @IBAction func sliderValueDidChange(sender: UISlider) {
        
        var returnedArray: [Int] = []
        var formattedOutput: String = ""
        
        // Display the update slider value
        self.selectedValueLabel.text = String(Int(theSlider.value))
        
        // Calculate the Fibonacci elements based on the slider value
        returnedArray = self.fibo.calculateFibonacciNumbers(minimum2: Int(theSlider.value))
        
        // Put the elements in a nicely formatted array
        for number in returnedArray {
            formattedOutput = formattedOutput + String(number) + ", "
        }
        
        // Update the textfield with the formatted array
        self.outputTextView.text = formattedOutput
        
    }

}

