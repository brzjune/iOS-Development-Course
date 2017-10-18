 //: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

//MARK: lesson.09 - Switch
//09.task.01
/*
var str09 = "lkxcndh lkxcn  lkxcn  ksdnfnfsd cni"

var tupleChars09 = (vovel: 0, constant: 0, space: 0, symbol: 0)

for char in str09.characters {
switch char {
    
case "a", "e", "i", "o", "u", "y":
    tupleChars09.vovel += 1
    
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "z":
    tupleChars09.constant += 1
    
case " ":
    tupleChars09.space += 1
    
default:
    tupleChars09.symbol += 1
}
}

print (tupleChars09)
*/
//09.task.02

let age = 24
switch  age {
case 0..<18:
    print("You are a child")
case 18..<60:
    print("You are a man")
case 60...999999999:
    print("Sorry")
default:
    print("Smt. is wrong")
}

//09.task.03

var myName = (name: "Yurii", surname: "Berezovsky",  secondName: "Alexandrovich")
switch myName {
case (let name, _, _) where name.hasPrefix("A") || name.hasPrefix("O"):
    print("Hello, \(myName.name)")
    break
case (_, _, let secondName) where secondName.hasPrefix("V") || secondName.hasPrefix("D"):
    print("Hello, \(myName.name) \(myName.secondName)")
    break
case (_, let surname, _) where surname.hasPrefix("E") || surname.hasPrefix("Z"):
    print("Hello, \(myName.surname)")
    break
default:
    print("Hello, \(myName.surname) \(myName.name) \(myName.secondName)!")
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


//lesson.10 - Functions

//10.task.01
/*Создайте пару функций с короткими именами, которые возвращают строку с классным символом или символами. Например heart() возвращает сердце и т.п.
Вызовите все эти функции внутри принта для вывода строки этих символов путем конкатенации.*/

func sayHi() {
    print("Hi!")
}
sayHi()

func heart() -> String {
    return "❤️"
}
//var love = heart()
//print(love)

func smile() -> String {
    return "😀"
}


//10.task.02
/*Опять шахматные клетки. Реализовать функцию, которая принимает букву и символ и возвращает строку “белая” или “черная”. Строку потом распечатайте в консоль.*/

func funcChess (a: String, b: Int) -> (String, String) {
    let chessArray = ["A", "B", "C", "D", "E", "F", "G", "H"]
    var point = " "
    var color = " "
    
    for i in 0..<chessArray.count {
        
        if a == chessArray[i] {
            let i = i + 1
            point = a + String (b)
            (i % 2 != b % 2) ? (color = "White") : (color = "Black")
        }
    }
    return (point, color)
}

print(funcChess(a: "E", b: 5))


//10.task.03
/*Создайте функцию, которая принимает массив, а возвращает массив в обратном порядке.
 Можете создать еще одну, которая принимает последовательность и возвращает массив в обратном порядке.
 Чтобы не дублировать код, сделайте так, чтобы функция с последовательностью вызывала первую.*/


func arrayReversed (array: [Int]) -> (Array<Int>) {
    return (array.reversed())
}

arrayReversed(array:[1, 2, 3, 4, 5, 6, 7, 8, 9, 0])

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


//lesson.11 - Closures


let array10 = [2, 58, 3, 94, 65, 1, 0, 89, 23, 7, 4, 23, 97, 5, 90, 128, 5, 9, 20, 374, 5, 89]
func filterArray (array: [Int], f: (Int) -> Bool) -> [Int] {
    var arrayFiltered = [Int]()
    for i in array {
        if f(i) {
            arrayFiltered.append(i)
        }
    }
    return arrayFiltered
}

/*
func compare (i: Int) -> Bool {
    return i % 2 == 0
} */

filterArray(array: array10, f: {(i: Int) -> Bool in
    //print("i = \(i)")
    return i % 2 == 0
})

filterArray(array: array10, f: {(i: Int) -> Bool in
    //print("i = \(i)")
    return i % 1 == 0
})

filterArray(array: array10, f: {(i: Int) -> Bool in
    return i < 1
})

//9-28 первый массив

let ten01 = filterArray(array: array10) {$0 > 50}
print(ten01)



// Написать функцию, которая ничего не возвращает и принимает только один клоужер, который ничего не принимает и ничего не возвращает .
// Функция должна просто посчитать от 1 до 10 в цикле и после этого вызвать клоужер.
// Добавьте println в каждый виток цикла и в клоужер и проследите за очередностью выполнения команд.

func tenLes01 (f:() ->()) {
    
    for i in 1...10 {
        print(i)
    }
    f()
}

tenLes01 {print("tenLes01")}

//Используя метод массивов sorted, отсортируйте массив интов по возрастанию и убыванию. Пример показан в методичке.
let array10int = [2,3,48,55,45,6,92,7,57,0,4,54,453,5,1,3,2,34,0,7,2,3,1,5]

func backward (_ i1: Int, _ i2: Int) -> Bool {
    return i1 < i2
}
var reversedArray10int = array10int.sorted(by: backward)

print(reversedArray10int)

/*
Напишите функцию, которая принимает массив интов и клоужер и возвращает инт.
Клоужер должен принимать 2 инта (один опшинал) и возвращать да или нет.
В самой функции создайте опшинал переменную.
 
Вы должны пройтись в цикле по массиву интов и сравнивать элементы с переменной используя клоужер.
Если клоужер возвращает да, то вы записываете значение массива в переменную.
В конце функции возвращайте переменную.
Используя этот метод и этот клоужер найдите максимальный и минимальный элементы массива.
*/

func ten02 (array: [Int], f:(Int, Int?) -> Bool) -> Int {
    var iOpt: Int?
    for i in array {
        if f (i, iOpt) {
            iOpt = i
        }
    }
    return iOpt ?? 0
}
let maxInt = ten02(array: array10int) {$1 != nil ? $0 > $1! : true}
print(maxInt)

 /*
 Создайте произвольную строку.
 Преобразуйте ее в массив букв.
 Используя метод массивов sorted отсортируйте строку так,
 
 чтобы вначале шли гласные в алфавитном порядке,
 потом согласные,
 потом цифры,
 потом символы */

let str10 = "hKh4k-HkH0Khk76hB0HHH8gB6bHB60lkj9hg8H7gLkF5231fVL"
var array10str = [String]()
for i in str10.characters {
    array10str.append(String(i))
}

func priority(s: String) -> Int {
    switch s {
    case "a", "e", "i", "o", "u", "y": return 0
    case "a"..."z": return 1
    case "0"..."9": return 2
    default: return 3
    }
}

let sorted10 = array10str.sorted {
    switch (priority(s: $0), priority(s: $1)) {
    case let (a, b) where a > b: return true
    case let (a, b) where a < b: return false
    default:
        return String($0) >= String($1)
    }
}

sorted10
















