import UIKit

var str = "Hello, playground"

var age = 45

var life = "\(age)"

life.append("Long Life")

var bookTitle = "book book"
bookTitle = bookTitle.capitalized

var chatroom = "TEST"
var lowercase = chatroom.lowercased()

// Comment

var sentence = "Hida Bim Bum"

if sentence.contains("Hida") || sentence.contains("Bum") {
    sentence.replacingOccurrences(of: "Hida", with: "Houda")
    sentence.replacingOccurrences(of: "Bum", with: "Bo")
}

var asdf = "Hello" + " " + "\(age)"

//Type inference(most preferred)
var ageAgain = 30

//Explicit declaration
var weight: Int = 200

//Double = Long Values
var someNum: Double = 123123123123123123123123123
// 56.45 is a Double
var milesRan = 56.45

var pi: Float = 3.14

//pi = milesRan

var remainder = 13 % 5

var result = "The Rsult is \(remainder)"

var numbby = 12

if numbby % 2 == 0 {
    print("Cool, \(life)")
} else {
    print("this is an odd\(life)")
}

//order of operations
var result2 = 15 * ((5 + 7) / 3)

//Constants
let allowedEntry = false

//allowedEntry = true Can't do this because let is a constant

if !allowedEntry {
    print("Access Denied")
}

let enteredDoorCode = true
let passedRetinaScan = false
let agent = true

if enteredDoorCode && passedRetinaScan || agent {
    print("Welcome")
} else {
    print("Access Denied Again")
}

let hasDoorKey = false
let knowsPassword = true

if hasDoorKey || knowsPassword {
    print("Enter")
} else {
    print("Nope")
}

//Arrays

//Instead of this
var employee1Salary = 45000.0
var employee2Salary = 54000.0
var employee3Salary = 100000.0
var employee4Salary = 20000.0
// Do this
var employeeSalaries: [Double] = [45000.0, 54000.0, 100000.0, 20000.0]

print(employeeSalaries.count)

employeeSalaries.append(12000.0)

employeeSalaries.remove(at: 1) // 0, 1 , 2 , or 3

print(employeeSalaries.count)

var students = [String]()

print(students.count)

var studentList2 = [String]()

studentList2.append("John")

studentList2.append("Matthew")

studentList2.remove(at:0)


print(studentList2.count)

//loops
var salaries = [45000.0, 20000.0, 54000.0]

salaries[0] = salaries[0] + (salaries[0] * 0.10)
salaries[1] = salaries[1] + (salaries[1] * 0.10)

var index = 0
repeat {
    salaries[index] = salaries[index] + (salaries[index] * 0.10)
    index += 1
} while (index < salaries.count)

//for in loop or for each loop

for x in 1...5 {
    print("Index: \(x)")
}

for z in 1..<5 {
    print("Index: \(z)")
}

for i in 0..<salaries.count {
    salaries[i] = salaries[i] + (salaries[1] * 0.10)
}

for salary in salaries {
    print("Salary: \(salary)")
}

// Dictionaries also known as a Hash Map

var namesOfIntegers = [Int: String]()

namesOfIntegers[3] = "three"
namesOfIntegers[44] = "forty four"

namesOfIntegers = [:] //will clean out all of your keys and values

var airports: [String: String] = ["YYZ": "Toronto Pearson", "LAX": "Los Angeles International"]
// or with type inference - var airports: [String: String] = ["YYZ": "Toronto Pearson", "LAX": "Los Angeles International"]

print("Th airports dictionary has: \(airports.count) items")

if airports.isEmpty {
    print("The airports disctionary is empty!")
}

airports["LHR"] = "London"
airports["LHR"] = "London Heathrow" //to override dictionary
airports["DEV"] = "Moraleco International"

airports["DEV"] = nil

// (key, value)
//for (airportCode, airportName) in airports {
//    print("\(airportCode: \(airportName")
//}
//
//// Say "for each key in airports.keys"
//for key in airports.keys {
//    print("Key:\(key")
//}
//
//// Say "for each value in airports.keys"
//for val in airports.values {
//    print("Value: \(val")
//}

//OOP

class Vehicle {
    var tires = 4
    var headlights = 2
    var horsepower = 468
    var model = ""
    
    func drive() {
        
    }
    
    func brake() {
        
    }
}

let bmw = Vehicle()
bmw.model = "328i"

let ford = Vehicle()
ford.model = "F150"
ford.brake()
ford.tires

func passByReference(vehicle: Vehicle) {
    vehicle.model = "Cheese"
}

print(ford.model)

passByReference(vehicle: ford) // Pass by reference
ford.model

var someonesAge = 20

//func passByValue(age: Int) {
//    let newAge = age
//}

//passByValue(age: someonesAge)

//class NewVC: UIViewController {
//    override func viewDidLoad() {
//        <#code#>
//    }
//}

//Polymorphism

class Shape {
    var area: Double?
    
    func calculateArea(valA: Double, valB: Double) {
        
    }
}

class Triangle: Shape {
    
    override func calculateArea(valA: Double, valB: Double) {
        area = (valA * valB) / 2
    }
}

class Rectangle: Shape {
    override func calculateArea(valA: Double, valB: Double) {
        area = (valA * valB)
    }
}

// Optionals- like a container that has a value or doesn't have a value. We can safely use a container without worrying about whats inside. It can have a nil value

var optionalNumber: Int? = 5
var number: Int = 5

if optionalNumber != nil {
    print("optionalNumber has a value of \(optionalNumber!)")
} else {
    //handle errors
}

// ! - force unwrapping

//optional binding- binding a optional value to a non optional constant

if let constantNumber = optionalNumber {
    print("constantNumber has a value of \(constantNumber)")
} else {
    print("optionalNumber is nil")
}

func intPrinter() {
    guard let constantNumber = optionalNumber else { return }
    print("constantNumber has a value of \(constantNumber)")
}

//implicitly unwrapped optional- force unwrap from the beginning

let assumedValue: Int! = 5
let implicitValue: Int = assumedValue

// nil coalescing and using ternary operator

//let optionalInt: Int? = nil
//let result = optionalInt ?? 0

//Optional chaining

class EmsAttendee {
    var admissionBadge: AdmissionBadge?
    
    init(badge: AdmissionBadge?) {
        self.admissionBadge = badge
    }
}

class AdmissionBadge {
    var numberOfDays: Int
    
    init(numberOfDays: Int) {
        self.numberOfDays = numberOfDays
    }
}

let admissionBadge = AdmissionBadge(numberOfDays: 3)
let attendee = EmsAttendee(badge: nil)

if let daysAttendable = attendee.admissionBadge?.numberOfDays {
    print("This attendee can enter Ems for \(daysAttendable) days.")
} else {
    print("This person has not purchased a ticket")
}
