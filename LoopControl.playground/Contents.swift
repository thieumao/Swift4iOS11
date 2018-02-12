//: Playground - noun: a place where people can play

import UIKit
var size:Int = 10

// for loop
for index in 1...size {
    if index % 2 == 0 {
        continue;
    }
    print ("number: \(index)")
    if index == 7 {
        break
    }
}

for index in 1..<size {
    print ("number: \(index)")
}

let names = ["hien", "mai", "van"]
for name in names {
    print (name)
}

// while-repeat
var count = 1 // init

while count <= 10 {
    print("while: \(count)")
    count = count + 1
}

repeat {
    print("repeat: \(count)")
    count = count + 1
}while count <= 20

