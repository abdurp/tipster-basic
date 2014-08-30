//
//  ViewController.swift
//  tipster
//
//  Created by Abdi on 8/26/14.
//  Copyright (c) 2014 AbdurR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var tipPercentages: UISegmentedControl!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        
        var tipStatic = [0.18, 0.2, 0.22]
        var tipPercentage = tipStatic[tipPercentages.selectedSegmentIndex]
        
        var billAmount = Double((billField.text as NSString).doubleValue)
        
        var tip: Double
        tip = billAmount * tipPercentage
        
        var total:Double
        total = billAmount + tip
        
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true);
    }

}

