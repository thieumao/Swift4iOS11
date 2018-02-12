//
//  ViewController.swift
//  FindMyAge
//
//  Created by Mai Hien on 2/12/18.
//  Copyright © 2018 Mai Hien. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var txtYearOfBirth: UITextField!
    @IBOutlet weak var laShowAge: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        txtYearOfBirth.delegate = self as! UITextFieldDelegate
    }
    
    @IBAction func ClickFindAge(_ sender: Any) {
        // fire click button
        GetAge()
    }
   
    func GetAge() {
        
        let yearOfBirth = Int(txtYearOfBirth.text!)
        // get current Year
        let date = Date()
        let calendar = Calendar.current
        let year = calendar.component(.year, from: date)
        let personAge = year - yearOfBirth!
        laShowAge.text = "Your Age is \(personAge)"
    }
    // hide keyboard after input done
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
   
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // fire some click return keyboard
        GetAge()
        self.view.endEditing(true)
        return true
    }
    
}

