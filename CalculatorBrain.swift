//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Luiz Silva on 10/11/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation
import UIKit


struct CalculatorBrain{
    var bmi: BMI?
    
    
    mutating func calculateBMI (weight: Float, height: Float){
        let bmiCalc = weight / pow(height, 2)
        var message:String
        var color: UIColor
        if bmiCalc < 18.5 {
            message = "Eat more pies"
            color = .blue
        } else if bmiCalc < 24.9 {
            message = "Fit as a fiddle"
            color = .green
        } else {
            message = "Eat less pies"
            color = .orange
        }
        bmi = BMI(value: String(format: "%.1f", bmiCalc), advice: message, color: color)
        
    }
    
    func  getBMIvalue() -> String {
        return bmi?.value ?? "0.0"
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Something is not working"
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? .black
    }
}
