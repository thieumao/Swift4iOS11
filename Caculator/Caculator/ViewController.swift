//
//  ViewController.swift
//  Caculator
//
//  Created by Mai Hien on 2/14/18.
//  Copyright © 2018 Mai Hien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var laNumberShow: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    var minuesFlg = false
    var newOperation = true
    func AddNumberToInput(number:String) {
        var textNumber = String(laNumberShow.text!)
        if newOperation {
            if !minuesFlg {
                textNumber = ""
            } else {
                textNumber.removeLast()
                minuesFlg = false
            }
            newOperation = false
        }
        textNumber = textNumber + number
        laNumberShow.text = textNumber
    }
    
    @IBAction func buo(_ sender: Any) {
        AddNumberToInput(number: "0")
    }
    
    @IBAction func buDot(_ sender: Any) {
        AddNumberToInput(number: ".")
    }
    @IBAction func bu1(_ sender: Any) {
        AddNumberToInput(number: "1")
    }
    @IBAction func bu2(_ sender: Any) {
        AddNumberToInput(number: "2")
    }
    @IBAction func bu3(_ sender: Any) {
        AddNumberToInput(number: "3")
    }
    @IBAction func bu4(_ sender: Any) {
        AddNumberToInput(number: "4")
    }
    @IBAction func bu5(_ sender: Any) {
        AddNumberToInput(number: "5")
    }
    @IBAction func bu6(_ sender: Any) {
        AddNumberToInput(number: "6")
    }
    @IBAction func bu7(_ sender: Any) {
        AddNumberToInput(number: "7")
    }
    @IBAction func bu8(_ sender: Any) {
        AddNumberToInput(number: "8")
    }
    @IBAction func bu9(_ sender: Any) {
        AddNumberToInput(number: "9")
    }
    
    @IBAction func buClean(_ sender: Any) {
        laNumberShow.text = "0"
        newOperation = true
    }
    
    @IBAction func buConstrast(_ sender: Any) {
        let textNumer = Double(laNumberShow.text!)
        if textNumer! > 0 {
            laNumberShow.text = "-" + laNumberShow.text!
        } else if textNumer! < 0 {
            laNumberShow.text?.removeFirst()
        } else {
            laNumberShow.text = "-0"
            minuesFlg = true
        }
    }
    
    @IBAction func buPercent(_ sender: Any) {
        var textNumber = Double(laNumberShow.text!)
        textNumber! = textNumber! / 100.0
        laNumberShow.text = String (textNumber!)
        newOperation = true
    }
    
    var op = "+"
    var number_1:Double?
    
    @IBAction func buMul(_ sender: Any) {
        op = "*"
        number_1 = Double(laNumberShow.text!)
        newOperation = true
    }
    
    @IBAction func buDiv(_ sender: Any) {
        op = "/"
        number_1 = Double(laNumberShow.text!)
        newOperation = true
    }
    
    @IBAction func buAdd(_ sender: Any) {
        op = "+"
        number_1 = Double(laNumberShow.text!)
        newOperation = true
    }
    
    @IBAction func buSub(_ sender: Any) {
        op = "-"
        number_1 = Double(laNumberShow.text!)
        newOperation = true
    }
    
    @IBAction func buEqual(_ sender: Any) {
        let number_2 = Double (laNumberShow.text!)
        
        var result:Double?
        switch op {
        case "+":
            result = number_1! + number_2!
        case "-":
            result = number_1! - number_2!
        case "*":
            result = number_1! * number_2!
        case "/":
            result = number_1! / number_2!
        default:
            result = 0
        }
        laNumberShow.text = String(result!)
        newOperation = true
    }
}

