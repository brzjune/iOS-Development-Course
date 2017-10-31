//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class StudentClass {
    var name : String
    var age : Int
    
    init() {
        name = "No name"
        age = 20
    }
    
    init(name : String, age : Int) {
        self.name = name
        self.age = age
    }
}

struct StudentStruct {
    var name : String
    var age : Int
}

let student1 = StudentClass()

student1.name = "Yura"
student1.age = 24

let student2 = StudentClass(name: "Bob", age: 22)

var student3 = StudentStruct(name: "Jack", age: 23)

//HW

struct Student {
    var name : String
    var surname : String
    var yearOfBirth : Int
    var averageMark : Double
}

let student01 = Student(name: "Alex", surname: "Johnson", yearOfBirth: 1993, averageMark: 7)
let student02 = Student(name: "Bob", surname: "Johnson", yearOfBirth: 1991, averageMark: 7.5)
let student03 = Student(name: "Jordan", surname: "Piterson", yearOfBirth: 1990, averageMark: 6)
let student04 = Student(name: "Dennis", surname: "Rodman", yearOfBirth: 1995, averageMark: 9.1)
let student05 = Student(name: "Greg", surname: "Nickotero", yearOfBirth: 1990, averageMark: 7.5)
let student06 = Student(name: "Jack", surname: "Black", yearOfBirth: 2000, averageMark: 8)

let arrayOfStudents = [student01, student02, student03, student04, student05, student06]

func printArray (_ array :[Student]) {
    for (i, student) in array.enumerated() {
        print("\(i + 1). \(student.name) \(student.surname), \(student.yearOfBirth), \(student.averageMark)")
    }
}

printArray(arrayOfStudents)


















