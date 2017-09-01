//
//  ViewController.swift
//  textFieldMagic
//
//  Created by Vaibhav Sahu on 8/20/17.
//  Copyright © 2017 Vaibhav Sahu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var zipCode: UITextField!
    
    @IBOutlet weak var currencyField: UITextField!
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textSwitch: UISwitch!
    
    @IBOutlet weak var editableText: UITextField!
    let zipCodeDelegate = ZipCodeTextFieldDelegate()
    let currencyDelegate = CurrencyTextFieldDelegate()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        zipCode.delegate = zipCodeDelegate
        currencyField.delegate = currencyDelegate
        textField.delegate = self as UITextFieldDelegate
        self.textSwitch.setOn(true, animated: true)
        
    }
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return self.textSwitch.isOn
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true;
    }
    
    @IBAction func toggleTheTextEditor(_ sender: AnyObject) {
        
        if !(sender as! UISwitch).isOn {
            self.textField.resignFirstResponder()
        }
    }
}

