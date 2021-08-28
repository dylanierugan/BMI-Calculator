//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Dylan Ierugan on 5/26/21.

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        heightLabel.text = "50 inches"
        weightLabel.text = "220 lbs"
        heightSlider.value = 50
        weightSlider.value = 222
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(Int(sender.value))
        heightLabel.text = "\(height) inches"
        
    }
    
    @IBAction func weightChangedSlider(_ sender: UISlider) {
        let weight = String(Int(sender.value))
        weightLabel.text = "\(weight) lbs"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
        }
    }
    
}

