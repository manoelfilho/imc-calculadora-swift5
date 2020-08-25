//
//  BMI.swift
//  BMI Calculator
//
//  Created by Manoel Filho on 25/08/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct BMI {
    
    let value: Float
    let advice: String
    let color: UIColor
    
    func getAdvice() -> String {
        return self.advice
    }
    
    func getColor() -> UIColor {
        return self.color
    }
}
