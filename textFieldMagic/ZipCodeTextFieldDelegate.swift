//
//  ZipCodeTextFieldDelegate.swift
//  textFieldMagic
//
//  Created by Vaibhav Sahu on 8/24/17.
//  Copyright © 2017 Vaibhav Sahu. All rights reserved.
//

import Foundation
import UIKit

class ZipCodeTextFieldDelegate: NSObject, UITextFieldDelegate{
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let newText = textField.text! as NSString
        newText.replacingCharacters(in: range, with: string)
        return newText.length <= 5
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
