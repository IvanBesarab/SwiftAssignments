//
//  ViewController.swift
//  Assignment2
//
//  Created by Ivan Besarab on 8/11/20.
//  Copyright © 2020 Ivan Besarab. All rights reserved.
//

import UIKit

class ViewController: RootViewController {

    //    Задача 0. Вывести наибольшее из двух чисел
    func findGreatestNumber(numberA: Int, numberB: Int) {
        print("Greatest number is \(numberA > numberB ? numberA : numberB)")
    }

    //    Задача 1. Вывести квадрат и куб введенного числа
    func findSquareAndQubeOf(number: Int) {
        func square(_ number: Int) -> Int {
            let result = number * number
            return result
        }
        func qube(_ number: Int) -> Int {
            let result = square(number) * number
            return result
        }
        print("square of \(number) = \(square(number))")
        print("qube of \(number) = \(qube(number))")
    }

    //    Задача 2. Вывести все числа до заданного и в обратном порядке до 0
    func numbersUpToNAndBackToZero(with number: Int) {
        var counter = 1
        for i in 0...number + number {
            if i > number {
                counter += 1
                print(i - counter)
                counter += 1
            }
            else {
                print(i)
            }
        }
    }

    //    Задача 3. Подсчитать общее число делителей числа и вывести их
    func findDivisors(of number: Int) {
        print("number \(number) has \(numberDivisors(number: number, needPrint: true)) divisors")
    }

    //    Задача 4 Проверить, является ли заданное число совершенным
    func isNumberPerfect(_ number: Int) {
        if number == numberDivisors(number: number, needPrint: false) {
            print("number \(number) is perfect")
        }
        else {
            print("number \(number) is NOT perfect")
        }
    }

	//    Задача 5 Развернуть число
	func mirror(number: Int) {
        var num = number
        var multiplier = 1
        var reNumber = 0
        var reNumberCounter = 0
        while multiplier < number {
            if num % 10 != 0 {
                num -= 1
                reNumberCounter += 1
            } else {
                num /= 10
                reNumber *= 10
                reNumber += reNumberCounter
                multiplier *= 10
                reNumberCounter = 0
            }
        }
        print ("Mirrored number is \(reNumber)")
    }
    
    func numberDivisors(number: Int, needPrint: Bool) -> Int { // for task 3 & 4
        var divisorsCount = 0
        var divisorsSumm = 0
        for i in 1..<number {
            if number % i == 0 {
                if needPrint == true {
                    print(i)
                }
                divisorsCount += 1
                divisorsSumm += i
            }
        }
        if needPrint == true {
            return divisorsCount
        }
        return divisorsSumm
    }

}

