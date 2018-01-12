//
//  ViewController.swift
//  TipCalculator
//
//  Created by Samuel Carbone on 1/11/18.
//  Copyright © 2018 Samuel Carbone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipSelector: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true);
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let tipPercentages = [0.18,0.20,0.25];
        let bill = Double(billAmount.text!) ?? 0
        let tip = bill * tipPercentages[tipSelector.selectedSegmentIndex];
        let total = bill + tip;
        tipLabel.text = String(format:"$%.2f",tip);
        totalLabel.text = String(format:"$%.2f",total);
    }
}

