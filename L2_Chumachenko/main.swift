//
//  main.swift
//  L2_Chumachenko
//
//  Created by Александр Чумаченко on 07.03.2021.
//

import Foundation
let myNumber = 13

//Функция, которая определяет четность числа
func numberParity(number: Int) -> String {
    if number%2 == 0 {
        return "\(number) - четное число"
    } else {
        return "\(number) - нечетное число"
    }
}

//print(numberParity(number: myNumber))

//Функция, которая проверяет, делится ли число без остатка на 3
func div3(number: Int) -> String {
    if number%3 == 0 {
        return "\(number) - делится на 3 без остатка"
    } else {
        return "\(number) - не делится на 3 без остатка"
    }
}

//print(div3(number: myNumber))

//Создание возрастающего массива из 100 чисел
var myArray: [Int] = []
for i in 1...100 {
    myArray.append(i)
}

//Удаление из массива всех четных чисел и чисел, которые не делятся на 3
for value in myArray {
    if (value % 2) == 0 || (value%3) == 0 {
        myArray.remove(at: myArray.firstIndex(of: value)!)
    }
}

//print(myArray)

//Функция добавления n чисел Фибоначчи в массив
func fibonacciAdd(array: [Int], length: Int) -> [Int] {
    var resultArr = array
    for _ in 1...length {
        let fibNum = ([resultArr[resultArr.count - 1] + resultArr[resultArr.count-2]])
        resultArr.append(contentsOf: fibNum)
    }
    return resultArr
}

//print(fibonacciAdd(array: myArray, length: 50))

//задание 6*
let n = 1000
var someArray: [Int] = []
for i in 0...n {
    someArray.append(i)
}
someArray[1] = 0
var p = 2

for _ in p...n {
    if someArray[p] != 0 {
        var i = p+p
        while i <= n {
            someArray[i] = 0
            i = i+p
        }
    }
    p += 1
}
var eratosfenArr = Array(Set(someArray))
eratosfenArr.sort()
eratosfenArr.removeFirst()
print(eratosfenArr)
