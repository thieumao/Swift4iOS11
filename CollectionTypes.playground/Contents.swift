//: Playground - noun: a place where people can play

import UIKit

/* Array */
var arr=[10,11,12,13,14,15]
for item in arr {
    print("array: \(item)")
}
arr[3] = 90
arr.append(70)
for index in 0..<arr.count {
    print("array[ \(index) ] for index \(arr[index])")
}

var names = [String]()
names.append("Hien1")
names.append("Hien2")
names.append("Hien3")
names.append("Hien4")
names.remove(at: 2)
for name in names {
    print(name)
}

/* Dictionaries */
var peopleAccounts = [10:"Hien", 11:"Mai", 12:"Van"]
print(peopleAccounts[11]!)
peopleAccounts[11] = "Van Hien"
print(peopleAccounts[11]!)

// define without init
var airportList = [String:String]()
airportList["VNA"] = "VietNam Airlines"
airportList["VJA"] = "Vietjet Air"

for (k,v) in airportList {
    print("key: \(k), and value: \(v)")
}

/* Sets */
var jobs = Set<String>()
jobs.insert("Machine Learning Developer")
jobs.insert("System Developer")
jobs.insert("Web Developer")
jobs.insert("Mobile Developer")
jobs.insert("Infa Developer")
for job in jobs {
    print( "Job with Set: \(job)")
}

/* Sets to compare with Array */
var jobArray = Array<String>()
jobArray.append("Machine Learning Developer")
jobArray.append("System Developer")
jobArray.append("Web Developer")
jobArray.append("Mobile Developer")
jobArray.append("Infa Developer")
for job in jobArray {
    print("Job with Array: \(job)")
}
