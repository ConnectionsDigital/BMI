//
//  BMI.swift
//  BMI
//
//  Created by Kenneth W Jackson on 11/14/18.
//  Copyright © 2018 Connections Digital. All rights reserved.
//

import Foundation


//bmi = (myBMI.weight * 703) / (myBMI.height * myBMI.height)
public struct BMICalculator {
    func bmi(height: Int, weight: Int) -> Int {
        let bmiCalc = 703 * weight / (height * height)
        return bmiCalc
    }
}




