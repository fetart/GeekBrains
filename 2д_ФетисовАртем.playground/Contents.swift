import UIKit

//Два задания в одной функции
// 1) Написать функцию, которая определяет, четное число или нет.
// 2) Написать функцию, которая определяет, делится ли число без остатка на 3.
func checkEven(num: Int, div: Int) -> Bool{
    return num % div == 0
}

//print(checkEven(num: 11, div: 2))
//print(checkEven(num: 1, div: 3))


// 3) Создать возрастающий массив из 100 чисел.
var newArray = [Int]()
for i in  1...100{
    newArray.append(i)
}
//print(newArray)


// 4) Удалить из этого массива все четные числа и все числа, которые не делятся на 3
var newArray2 = [Int]()

for value in newArray{
    if !checkEven(num: value, div: 2) && !checkEven(num: value, div: 3){
        //var index = newArray.firstIndex(of: value)
        newArray2.append(value)
    }
}

newArray = newArray2

//print(newArray)

// 5) Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее n элементов.


func fiboNum (num: Int, count: Int) -> [Int] {
    var arrayFib = [Int]()
    var valueFiv = num
    while arrayFib.count < count {
        valueFiv = (valueFiv - 1) + (valueFiv - 2)
        arrayFib.append(valueFiv)
    }
    return arrayFib
}

var arrFib = fiboNum(num: 100, count: 50);
//print(arrFib)
//print(arrFib.count)

// 6) Заполнить массив из 100 элементов различными простыми числами.

var simpleArray = [Int]()
var array = Array(2...100)
for value in array {
    var check = false
    for value2 in 2 ... value{
        if (value % value2 == 0 && value != value2){
            check = true
    
        }
        if (check){
            break
        }
        //print("\(value) % \(value2) = \(value % value2)")
    }
    if (!check){
        simpleArray.append(value)
    }
    //
}

print(simpleArray)
