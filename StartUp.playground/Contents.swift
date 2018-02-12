//: Playground - noun: a place where people can play
/*
 this app compare using val and Let
 */
import UIKit

var str = "Hello, Hien"

print(str)
print("Welcome to Swift4")

var age:Int = 24
print(age)
var department:String = "Sofware engineering"
print(department)
var average:Double = 72.8
print(average)
var isMarried:Bool = true
print(isMarried)

var jobTitle:String? // default nil
jobTitle = "Software Developer"
print(jobTitle!) // ! mean that get truly value

// let creditNumber = "12345678" // const, so the below change value of creditNumber is error
var creditNumber = "12345678"
print(creditNumber)
creditNumber = "987654321" // error if above defination of creditNumber used let syntax
print(creditNumber)


