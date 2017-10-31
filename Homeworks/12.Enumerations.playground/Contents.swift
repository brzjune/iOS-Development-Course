//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

enum Direction : String {
    case Left
    case Right
}

enum Action {
    case Walk (meters: Int)
    case Run (meters: Int, speed: Double)
    case Stop
    case Turn (directin: Direction)
}

var action = Action.Walk(meters: 10)
action = .Run(meters: 20, speed: 30)



switch action {
    case .Walk (let meters): print("Walk \(meters) meters!")
    case .Run (let meters, let speed): print("Run \(meters) meters with speed \(speed)!")
    case .Turn (let dir) where dir == .Left: print("Turn left!")
    case .Turn (let dir) where dir == .Right: print("Turn right!")
default: break
}

/*
1. Создать энум с шахматными фигруами (король, ферзь и т.д.).
Каждая фигура должна иметь цвет белый либо черный (надеюсь намек понят),
а так же букву и цифру для позиции.
Создайте пару фигур с расположением на доске, так, чтобы черному королю был мат :)
Поместите эти фигуры в массив фигур

2. Сделайте так, чтобы энумовские значения имели rawValue типа String.
Каждому типу фигуры установите соответствующее английское название.
Создайте функцию, которая выводит в консоль (текстово, без юникода) название фигуры, цвет и расположение.
Используя эту функцию распечатайте все фигуры в массиве.
 
3. Используя красивые юникодовые представления шахматных фигур, выведите в консоли вашу доску.
Если клетка не содержит фигуры, то используйте белую или черную клетку.
Это должна быть отдельная функция, которая распечатывает доску с фигурами
(принимает массив фигур и ничего не возвращает)
*/
enum Type : String {
    case king = "King"
    case queen = "Queen"
    case rooks = "Rooks"
    case bishops = "Bishops"
    case knights = "Knights"
    case pawns = "Pawns"
}

enum Color : String {
    case black, white
}

enum Column: Int {
    case a = 1, b, c, d, e, f, g, h
}

enum Row: Int {
    case one = 1, two, three, four, five, six, seven, eight
}

typealias Figure = (type: Type, color: Color, column: Column, row: Row)

var whiteKing: Figure = (.king, .white, .a, .one)
var blackKing: Figure = (.king, .black, .b, .three)
var blackQueen: Figure = (.queen, .black, .b, .two)

var chessBoard = [whiteKing, blackKing, blackQueen]

func printChess (figure : Figure) {
    print("\(figure.color.rawValue) \(figure.type.rawValue) has cordinats \(figure.column) \(figure.row.rawValue)")
}

for figure in chessBoard {
    printChess(figure: figure)
}




 

/*


Создайте функцию, которая будет принимать шахматную фигуру и тюпл новой позиции.
Эта функция должна передвигать фигуру на новую позицию, причем перемещение должно быть легальным:
нельзя передвинуть фигуру за пределы поля и нельзя двигать фигуры так, как нельзя их двигать в реальных шахматах (для мегамонстров программирования).
Вызовите эту функцию для нескольких фигур и распечатайте поле снова.

Следите чтобы ваш код был красивым!
*/
