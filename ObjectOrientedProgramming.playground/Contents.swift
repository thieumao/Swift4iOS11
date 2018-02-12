//: Playground - noun: a place where people can play
/*
 Object Oriented Programming Practice
 */
import UIKit

// enum
enum directions {
    case east
    case south
    case north
    case west
}
// protocol
protocol Operations{
    func add(n1:Int, n2:Int) -> Int
    func sub(n1:Int, n2:Int) -> Int
}

class MathOperation:Operations{
    func add(n1: Int, n2: Int) -> Int {
        return n1 + n2
    }
    
    func sub(n1: Int, n2: Int) -> Int {
        return n1 - n2
    }
    
    
}

// extension
extension MathOperation {
    func mul(n1:Int, n2:Int) -> Int {
        return n1 * n2
    }
}
// extend function
extension Double {
    func roundTo(places:Int) -> Double {
        let dvisor:Double = pow(10.0, Double(places))
        return (self * dvisor).rounded()
    }
}

class Car {
    // properties

    var type:String?
    var model:Int?
    private var price:Double?
    var milesDrive:Int?
    var owner:String?
    
    // initialization
    init() {
        print("Object is created")
        self.price = 0
        self.model = 0
    }
    init(type:String, model:Int, milesDrive:Int, owner:String) {
        self.type = type
        self.model = model
        self.milesDrive = milesDrive
        self.owner = owner
        self.price = 10000
    }
    
    //method
    func getPrice() -> Double {
        let newPrice = price! - (Double(milesDrive!) * 10)
        return newPrice
    }
    
    func getOwner() -> String {
        return owner!
    }
    
    func getInitPrice() -> Double {
        return price!
    }
}

// inheritance
class Track:Car {
    func getModel() -> Int {
        return model!
    }
    
    // override function
    override func getPrice() -> Double {
        let newPrice = getInitPrice() - Double(milesDrive!) * 15
        return newPrice
    }
    
    override init(type:String, model:Int, milesDrive:Int, owner:String) {
        print ("Track is created")
        
        // call parent method with parameter
        super.init(type: type, model: model, milesDrive: milesDrive, owner: owner)
    }
}
// create instance
let car1 = Car()
car1.type = "BWM"
car1.model = 2018
// car1.price = 1000.3 error
car1.milesDrive = 20
car1.owner = "Hien Mai Van"
print(car1.getOwner())
print(car1.getPrice())

let car2 = Car(type: "Honda", model: 2018, milesDrive: 10, owner: "Hien Mv")
print(car2.getOwner())
print(car2.getPrice())

let track = Track(type: "Nissan", model: 2017, milesDrive: 105, owner: "Mai Hien")
print(track.getOwner())
print(track.getModel())
print(track.getPrice())

// type casting
let carCast = Track(type: "Nissan", model: 2017, milesDrive: 105, owner: "Mai Hien") as Car
print(carCast.getOwner())
// print(carCast.getModel() ----error because Car class not have getModel() function
print(carCast.getPrice()) // still use method getPrice of Track

let mathOp = MathOperation()
print(mathOp.add(n1: 12, n2: 13))
let mul = mathOp.mul(n1: 12, n2: 13)

let number:Double = 10.3456678
print(number.roundTo(places:3))

let myDirect = directions.east
switch myDirect {
case directions.east:
    print("move to east")
case directions.south:
    print("move to south")
case directions.north:
    print("move to north")
case directions.west:
    print("move to west")
default:
    print("not defines")
}





