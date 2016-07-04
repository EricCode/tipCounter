//
//  ViewController.swift
//  tip
//
//  Created by EricYang on 2016/7/4.
//  Copyright © 2016年 EricYang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBOutlet weak var amount: UITextField!
    @IBOutlet weak var percentage: UILabel!
    @IBOutlet weak var tip: UILabel!
    
    @IBAction func stepper(_ sender: UIStepper) {
        percentage.text = String(sender.value)
        if let a = Double(amount.text!){
           tip.text = String(a*sender.value)
        }
    }
    @IBAction func changeAmount(_ sender: UITextField) {
        let per = percentage.text
        let amo = sender.text
        if let p = Double(per!), a = Double(amo!){
            tip.text = String(p*a)
        }
        amount.text = amo
    }
    
}

