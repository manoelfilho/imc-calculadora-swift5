//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Manoel Filho on 25/08/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(_ weight: Float, _ height: Float) {
        
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Abaixo do peso!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Peso ideal!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        }else{
            bmi = BMI(value: bmiValue, advice: "Acima do peso!", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        }
        
    }
    
    func getBMI() -> Float {
        return bmi?.value ?? 0.0
    }
}
