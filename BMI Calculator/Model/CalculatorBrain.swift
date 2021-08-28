//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Dylan Ierugan on 5/26/21.

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = (weight / pow(height,2)) * 703
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more cheeseburgers.")
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Keep eating the same\n amount of cheeseburgers.")
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less cheeseburgers.")
        }
    }
    
    func getBMIValue() -> String {
        let bmiStr = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiStr
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice."
    }
    
}
