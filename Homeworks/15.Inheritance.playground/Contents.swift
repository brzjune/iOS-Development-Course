//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport





class Human {
    
    var firstName : String = ""
    var lastName : String = ""
    
    var fullName : String {
        return firstName + " " + lastName
    }

    func sayHello() -> String {
        return "Hello"
    }
    
}

let human01 = Human()
human01.firstName = "Yura"
human01.lastName = "Berezovsky"

human01.fullName

human01.sayHello()
 
