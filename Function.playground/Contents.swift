//: Playground - noun: a place where people can play

import UIKit

/* function */
func sum(num1:Int, num2:Int)->Int {
    let sum = num1 + num2
    return sum
}

// polymophism
func sum(num1:Double, num2:Double)->Double {
    let sum = num1 + num2
    return sum
}

func sum(num1:Int, num2:Double)->Double {
    let sum = Double(num1) + num2
    return sum
}

func showName() {
    print("Hien Mai Van")
}
// overloading
func showName(name:String) {
    print(name)
}


showName()
showName(name: "Hien Van Mai")

let r = sum(num1: 10, num2: 12)
let r2 = sum(num1: 1.7, num2: 2.5)
let r3 = sum(num1: 3, num2: 3.3)

