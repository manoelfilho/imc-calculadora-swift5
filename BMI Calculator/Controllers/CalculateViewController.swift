//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heighSlider: UISlider!
    @IBOutlet weak var weighSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func heighSliderChanged(_ sender: UISlider) {
        let heigh = sender.value
        heightLabel.text = String(format: "%.2f", heigh) + "m"
    }
    
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = sender.value
        weightLabel.text = String(format: "%.2f", weight) + "Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heighSlider.value
        let weight = weighSlider.value
        
//      let bmi = weight / pow(height, 2)
//      let bmi = weight / (height * height)
        
        calculatorBrain.calculateBMI(weight, height)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = String(format: "%.2f", calculatorBrain.getBMI())
            destinationVC.advice = calculatorBrain.bmi?.getAdvice()
            destinationVC.color = calculatorBrain.bmi?.getColor()
        }
    }
}

