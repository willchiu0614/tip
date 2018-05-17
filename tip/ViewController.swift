//
//  ViewController.swift
//  tip
//
//  Created by Will Chou on 2018/5/16.
//  Copyright © 2018年 Will Chou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
var totalcost=0.0
    
    
   
    @IBOutlet weak var itemcost: UITextView!
    @IBOutlet weak var itemTextField: UITextField!
    @IBOutlet weak var tipTextField: UITextField!
    @IBOutlet weak var moneyTextField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBAction func addButton(_ sender: Any) {
        view.endEditing(true)
        if let moneyText=moneyTextField.text,let itemname=itemTextField.text,let tipText=tipTextField.text,let money=Double(moneyText),let tip=Double(tipText){
            moneyTextField.text=""
            itemTextField.text=""
            tipTextField.text=""
            let labeladd=itemcost.text
           itemcost.text="\(labeladd!)"+"\n"+"\(itemname)"+" "+":\(money+tip*money/100)"
        
            totalcost+=money+tip*money/100
        }
    }
    @IBAction func calculateButton(_ sender: Any) {
            totalLabel.text="\(totalcost)"
    }
    @IBAction func tap(_ sender: Any) {
        view.endEditing(true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

