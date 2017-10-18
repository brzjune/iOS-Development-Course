 //: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

//MARK: Lesson.07 - Arrays

//07.task.03

let alphabet07 = "abcdefghijklmnopqrstuvwxyz"
var array07 = [String]()

for i in alphabet07.characters  {
    //array07.insert(String(i), at: 0)
    array07.append(String(i))
}
print("Alphabet = \(array07)")
print("\n")
