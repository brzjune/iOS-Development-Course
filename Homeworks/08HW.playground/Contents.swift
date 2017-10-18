 //: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

 
//MARK: lesson.08 - Dictionary

//08.task.01

var students08 = ["John Lock" : 10, "Bob Jack" : 8, "Alex Mahone" : 7]
students08 ["John Lock"]  = 9

print(students08)
print("\n")

students08 ["Bob Carter"] = 7
print(students08)
print("\n")

Array(students08.keys)
Array(students08.values)

//students08.updateValue(11, forKey: "John Lock")

let firstStudentMark = students08["John Lock"]
students08["John Lock"] = nil
students08.removeValue(forKey: "Bob Carter")

var sum08 = 0
var countOfValues = 0
var averageCount : Double = 0

for values08 in students08.values {
    countOfValues += 1
    sum08 += values08
    averageCount = Double(sum08)/Double(countOfValues)
}

print(sum08)
print("\n")

print(averageCount)
print("\n")

print(students08)
print("\n")

//08.task.02

var daysInMonth08 = ["january" : 31, "february" : 28, "march" : 31, "april" : 30, "may" : 31, "june" : 30, "july" : 31, "august" : 31, "september" : 30, "october" : 31, "november" : 30, "december" : 31, ]

for key in daysInMonth08.keys {
    print("\(key) - \(daysInMonth08[key]!) days")
}
    print("\n")


for (key, value) in daysInMonth08 {
    print("\(key) - \(value)")
    print("\n")
}

//08.task.03

var dictChess08 = [String : Bool]()
var str08 = "ABCDEFGH"
var arrayChess08 = [String]()

for char in str08.characters {
    arrayChess08.append(String(char))
}

for i in 0..<arrayChess08.count {
    for j in 0..<arrayChess08.count {
        dictChess08 ["\(arrayChess08[i] + String(j + 1))"] = (i % 2 != j % 2) ? false : true
    }
}

for (key, value) in dictChess08 {
    print("\(key) - \(value)")
}
print("\n")

















