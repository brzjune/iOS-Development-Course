//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport
import Foundation


struct Student {
    var firstName : String {
        didSet {
            firstName = firstName.capitalized
        }
    }
    var secondName : String {
        didSet {
            firstName = firstName.capitalized
        }
    }
    var fullname : String {
        get {
        return firstName + " " + secondName
        }
        set {
            let words = newValue.components(separatedBy: " ")
            if words.count > 0 {
                firstName = words[0]
            }
            if words.count > 1 {
                secondName = words[1]
            }
        }
    }

}

var student01 = Student(firstName: "Mike", secondName: "Jordan")

student01.firstName = "jAcK"
student01.secondName
student01.fullname
print(student01)

student01.fullname = "Kobe Brayant"
student01.firstName
student01.secondName
student01.fullname
print(student01)



//15
class Human {
    var name : String
    static let maxAge = 150
    var age : Int {
        didSet {
            if age > Cat.maxAge {
                age = oldValue
            }
        }
    }
    init(name : String, age : Int) {
        self.name = name
        self.age = age
    }
}

struct Cat {
    var name : String
    static let maxAge = 30
    static var totalCats = 0
    var age : Int {
        didSet {
            if age > Cat.maxAge {
                age = oldValue
            }
        }
    }
    init(name : String, age : Int) {
        self.name = name
        self.age = age
        
        Cat.totalCats += 1
    }
}

let human01 = Human(name: "Calvin", age: 44)
let cat01 = Cat(name: "Martin", age: 6)


Cat.totalCats

