//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Dylan Ierugan on 5/26/21.

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        adviceLabel.text = advice
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
