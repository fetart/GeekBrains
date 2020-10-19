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

func naturalNumber (n: Int) -> [Int]{
    var arrayNum = [Int]()
    for i in 2...n{
        for k in 2 ... i{
            var check = true
            if (i != k && i % k != 0){
                print("\(i) % \(k) = \(i%k) ")
                check = false
            }
            if (check){
                break
            }
            
//            var x = sqrt(Double(i))
//            if (floor(x) != x){
//                arrayNum.append(i)
//            }
//
//
//            break
        }
    }
    return arrayNum
}

//print(naturalNumber(n: 100))

