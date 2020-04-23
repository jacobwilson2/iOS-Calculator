//
//  ViewController.swift
//  Wilsonj-calculator
//
//  Created by Jacob Wilson on 2/1/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var curNum: Int = 0
    var preNum: Int = 0
    var calculating = false
    
    @IBOutlet weak var result: UILabel!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        if result.text == "00" {
            result.text = ""
        }
        if calculating == true {
            result.text = String(sender.currentTitle!)
            curNum = Int(result.text!)!
            calculating = false
        } else {
            result.text = result.text! + String(sender.currentTitle!)
            curNum = Int(result.text!)!
        }
    }
   
    
    @IBAction func Actions(_ sender: UIButton) {
        if result.text != nil && sender.currentTitle! != "=" {
            preNum = Int(result.text!)!
            result.text = ""
            calculating = true
        } else if sender.currentTitle! == "=" {
            result.text = String(preNum + curNum)
        } else if sender.currentTitle! == "AC" {
            result.text = "00"
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

