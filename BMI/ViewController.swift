//
//  ViewController.swift
//  BMI
//
//  Created by Kenneth W Jackson on 11/12/18.
//  Copyright © 2018 Connections Digital. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Gather data for BMI calculations
    @IBOutlet weak var fldFeet: UITextField!
    @IBOutlet weak var fldInches: UITextField!
    @IBOutlet weak var fldWeight: UITextField!
    
    @IBAction func calculateBTN(_ sender: Any) {
        
        // Convert string data to itegers
        let heightFeet = Int(fldFeet.text!)
        let heightInches = Int(fldInches.text!)
        let weightLbs = Int(fldWeight.text!)
        
        // Verify fields contain data
        let heightFeetString = (fldFeet.text!)
        let heightInchesString = (fldInches.text!)
        let weightLbsString = (fldWeight.text!)
        
        if(heightFeetString.isEmpty) || (heightInchesString.isEmpty) || (weightLbsString.isEmpty) {
            let myAlert = UIAlertController(title: "Alert", message: "All fields are required.", preferredStyle: UIAlertController.Style.alert)
            
            let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            
            myAlert.addAction(okAction)
            
            self.present(myAlert, animated: true, completion: nil)
            return
            
        }
        
        // Convert height in feet and inches to height in inches
        let heightTotalInches = (heightFeet!*12) + heightInches!
        
        // Send BMI calculation data to BMI struct
        let myBMI = BMICalculator()
        
        let bmiCalc = myBMI.bmi(height: heightTotalInches, weight: weightLbs!)
      
        // Display calculated BMI on device interface
        lblResult.text = "Your BMI is \(bmiCalc)"
    }
    
    @IBOutlet weak var lblResult: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Show keyboard at startup
        fldFeet.becomeFirstResponder()




    }
}

