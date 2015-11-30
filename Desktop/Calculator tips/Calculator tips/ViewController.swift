//
//  ViewController.swift
//  Calculator tips
//
//  Created by Ali Hadwan on 11/28/15.
//  Copyright © 2015 Ali Hadwan. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
     @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        
    }
   

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }

    @IBAction func onEditiingChanged(sender: AnyObject)
    {
        let tipPercentages = [0.10, 0.15, 0.20]
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        let billAmount = NSString(string: billField.text!).doubleValue
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        
       
        
         tipLabel.text = String(format: "$%.2f", tip)
         totalLabel.text = String(format: "$%.2f", total)
        
        
    }

    @IBAction func onTap(sender: AnyObject)
    {
        view.endEditing(true)
    }
}

