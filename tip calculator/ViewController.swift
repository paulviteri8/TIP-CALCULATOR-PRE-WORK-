//
//  ViewController.swift
//  tip calculator
//
//  Created by Paul Viteri on 8/26/20.
//  Copyright © 2020 Paul Viteri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercetangeControl: UISegmentedControl!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        
        view.endEditing(true)
    }

    
    @IBAction func calculateTip(_ sender: Any) {
    
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let tipPercentage = [0.15, 0.18, 0.20]
    
        let tip = bill * tipPercentage[tipPercetangeControl.selectedSegmentIndex]

        
        let total = bill + tip
        
        // 12.3 --> $12.30
        tipLabel.text = String(format: "$%.2f" , tip)
        totalLabel.text = String(format: "$%.2f" , total)
        
    }
    
}

