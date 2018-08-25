//
//  SettingsViewController.swift
//  Cal_Tip
//
//  Created by Su Tan on 8/23/18.
//  Copyright © 2018 Su Tan. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func indexChanged(_ sender: AnyObject) {
    
        switch segmentedControl.selectedSegmentIndex
        {
            case 0:
                textLabel.text = "9.25"
            case 1:
                textLabel.text = "9.00"
            case 2:
                textLabel.text = "8.5"
            default:
                textLabel.text = "9.25";
                break;
                
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
