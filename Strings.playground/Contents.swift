//: Playground - noun: a place where people can play
// practive String
import UIKit

let msg = "Well come to Swift4 course"
var name = "Hien"
let fullMsg = msg + ", " + name
print(fullMsg)

let fullMsg2 = "\(msg), \(name)"
print(fullMsg2)
name.append(msg)
print(name)
msg.capitalized
msg.lowercased()
msg.uppercased()

let info = "he works as for software department"

info.contains("work")
info.contains("Hien")

let msg3 = ""
msg3.isEmpty

let longMsg = """
日本語が難しい
でも、勉強したいです。
"""
print(longMsg)

// practice convert Data
var strNumber:String = "123456"
var strDbl:String = "12345.6"
var doubleNumber:Double = 1.3
var intNum = 124
// convert int to string

var intNumber:Int? = Int(strNumber)
var intNumber2 = Int(strNumber)
// convert double to int
var intDouble = Int(doubleNumber)

// convert int to string
var intString = 12345
var strString:String? = String(intString)
var strString2 = String(intString)
// convert double to string
var strDouble = String(doubleNumber)

// convert to double
var doubleNumb1 = Double(strNumber)
var doubleInt = Double(intNum)

// convert String to Double
var doubleString = Double(strNumber)
var doubleStr = Double(strDbl)






