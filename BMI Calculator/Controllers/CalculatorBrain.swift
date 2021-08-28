//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Dylan Ierugan on 5/26/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: Float?
    
    mutating func calculateBMI(height: Float, weight: Float){
        bmi = (weight / pow(height,2)) * 703
    }
    
    func getBMIValue() -> String {
        let bmiStr = String(format: "%.1f", bmi ?? 0.0)
        return bmiStr
    }
    
}
