//: Playground - noun: a place where people can play

/*
 practice if-else-switch-logic-condition
*/

import UIKit

let grade = 80
var level:String

if grade >= 90 {
    level = "A"
} else if grade >= 70 {
    level = "B"
} else if grade >= 50 {
    level = "C"
} else {
    level = "D"
}

print("Your Level is \(level)")

/*
 logic conditions - logic gates : and, or, not,
 */

print(3 == 10)
print(false && false)
print(false || true)
print(!(3 > 10))

/*
 switch
 */
switch grade {
case 100, 110:
    level = "A++"
case 90..<100:
    level = "A"
case 80..<90:
    level = "B"
case 70..<80:
    level = "C"
default:
    level = "D"
}

print("Your level is \(level)")

