//
//  ViewController.swift
//  Simple App
//
//  Created by Kassem Itani on 7/12/17.
//  Copyright © 2017 kassem Itani. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var txtText: UITextField!
    @IBOutlet var lblResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
   public func textFieldShouldEndEditing(_ textField: UITextField) -> Bool
    {
        textField.resignFirstResponder()
        return true
        
    }

    @IBAction func submitTapped(_ sender: Any) {
        
        self.lblResult.text = String(self.txtText.text!.characters.reversed())
    }

    @IBAction func copyTapped(_ sender: Any) {
        UIPasteboard.general.string = self.lblResult.text
       
    }

}

