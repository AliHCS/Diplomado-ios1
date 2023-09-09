import UIKit

//: [Previous](@previous)

import Foundation

//Grecia

//Ejercicio intervalos
let intervals = stride(from: 0, to: 60, by: 5 )
//let intervals2 = stride(from: 0, througth: 20, by: 5 )
for interval in intervals {
    print(interval)
}



//Operaciones Aritmeticas recursivas
//(6+(4*(8-1))/2

enum ArithmeticExpression {
    case number(Int)
    indirect case addition(ArithmeticExpression,ArithmeticExpression)
    indirect case sustract(ArithmeticExpression,ArithmeticExpression)
    indirect case multiplication (ArithmeticExpression , ArithmeticExpression)
    indirect case division (ArithmeticExpression , ArithmeticExpression)
}

//  (5+4)
let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let six = ArithmeticExpression.number(6)
let two = ArithmeticExpression.number(2)
let one = ArithmeticExpression.number(1)
let eigth = ArithmeticExpression.number(8)

let res = ArithmeticExpression.sustract(eigth, one)
let product = ArithmeticExpression.multiplication(res , four)
let sum = ArithmeticExpression.addition(six, product)
let div = ArithmeticExpression.division(sum, two)

func evaluate(expression: ArithmeticExpression) -> Int {
    switch expression {
    case .number(let number): return number
    case .addition(let leftExp, let rightExp): return evaluate(expression: leftExp) + evaluate(expression: rightExp)
    case .sustract(let leftExp, let rightExp): return evaluate(expression: leftExp) - evaluate(expression: rightExp)
    case .multiplication(let leftExp, let rightExp): return evaluate(expression: leftExp) * evaluate(expression: rightExp)
    case .division(let leftExp, let rightExp): return evaluate(expression: leftExp) / evaluate(expression: rightExp)
    }
}


evaluate(expression: div)




//Ejercicio coordenadas
var coordenada = (1,4)

switch coordenada {
case (1...5,1...5) :
    print("Cuadrante 1")
case (-5..<0,1...5) :
    print("Cuadrante 2")
case (-5..<0,-5..<0) :
    print("Cuadrante 3")
case (1...5,-5..<0) :
    print("Cuadrante 4")
case(0,0):
    print("En el origen")
case(0,let y ) where (y <= 5 && y >= 0 ):
    print("Esta en el eje y en \(y)")
case(let x,0):
    print("Esta en el eje x en \(x)")
default: break
}

//lluvia y bloqueador

var weather = "lluvia"
var time = 1

//close_range
var dark = Array(0...6) + Array(19...23)
print(dark)
var ligth = 7...18
print(ligth)

if weather == "lluvia"{
    print("🌧️")
}else if weather == "nieve"{
    print("🌨️")
}

//~ operador contiene

if  ligth ~= time {
    print("Usa bloqueador")
}else if dark.contains(time) {
    print("No necesitas bloqueador")
}

//Serpientes y escaleras
let serpienteYEscalera:[Int:Int] = [2:10, 5: 16, 8:17, 9:11, 13:3, 18:7, 21:10, 23:15 ]

let inicio: Int = 0

var jugador: Int = inicio

var contador: Int = 0

//for (key,value) in serpienteYEscalera {
//    if key == jugador {
//        jugador = value
//    }
//}

while jugador < 24 {
    let random = Int.random(in: 1...6)
    contador += 1
    print("dado:",random)
    jugador += random
    print("posicion: \(jugador)")
    
    print(serpienteYEscalera[jugador])
    
    if (serpienteYEscalera.contains{$0.key == jugador}) {
            jugador = (serpienteYEscalera[jugador])!
            print("Nueva posicion: \(jugador)")
        }
        
    }
print("Victoria con \(contador) tiros")
//: [Next](@next)

