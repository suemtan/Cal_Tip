//
//  ViewController.swift
//  Cal_Tip
//
//  Created by Su Tan on 8/23/18.
//  Copyright © 2018 Su Tan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
   //var timer = Timer()
   // var colors = UIColor()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        getRandomColor()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    @IBAction func onTap(_ sender: AnyObject) {
        
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: AnyObject) {
        
        let tipPercentages = [0.18, 0.2, 0.25]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
    
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
   
    func getRandomColor() {
        let red   = Float((arc4random() % 256)) / 255.0
        let green = Float((arc4random() % 256)) / 255.0
        let blue  = Float((arc4random() % 256)) / 255.0
        let alpha = Float(1.0)
        
        UIView.animate(withDuration: 2, animations: {
            self.view.backgroundColor = UIColor(displayP3Red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: CGFloat(alpha))
        }) { (completed) in
            if completed {
                UIView.animate(withDuration: 0.2, delay: 0.2, animations: {
                    self.view.backgroundColor = UIColor(red: 0.9, green: 0.9, blue: 0.4, alpha: 1)
                }, completion: nil)
            }
        }
    }
    

    }
    
    




