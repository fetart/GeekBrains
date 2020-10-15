import UIKit

//Exercise 1

let a: Double = 50
let b: Double = 300
let c: Double = 10
let d = (b * b) - (4 * a * c)
var x1: Double = 0, x2: Double = 0, x: Double = 0;
if (d > 0){
    x1 = (-b + sqrt(d)) / (2 * a)
    x2 = (-b - sqrt(d)) / (2 * a)
    print("x1: \(x1) x2: \(x2)")
} else if(d == 0){
    x = -b / (2 * a)
    print("x: \(x)")
} else {
    print("Корней нет")
}


// Exercise 2

// найти Площадь
let a1: Double = 3
let a2: Double = 4
var s1 = (a1 * a2) / 2

//Найти Периметр
var p1 = sqrt((a1 + a2)) + a1 + a2

//Найти гипотенузу
var c1 = sqrt(((a1 * a1) + (a2 * a2)))


// Exercise 3

//Узнать сумму вклада через 5 лет

var sum: Int = 1000000
let percent: Int = 10
let years: Int = 5
var total = sum;

for _ in 1...years {
    total += Int(((total * percent) / 100))
}

var diff: Int = total - sum

print("Первоначальная сумма вклада: \(sum). Сумма вклада через 5 лет: \(total). Доход \(diff)")

