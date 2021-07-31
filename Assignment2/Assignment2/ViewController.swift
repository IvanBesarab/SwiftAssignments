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
        let a = number * number
        print("""
square of \(number) = \(a)
qube of \(number) = \(a * number)
""")


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
        var divisorsCount = 0
        for i in 1..<number {
            if number % i == 0 {
                print(i)
                divisorsCount += 1
            }
        }
        print("number \(number) has \(divisorsCount) divisors")
    }

    //    Задача 4 Проверить, является ли заданное число совершенным
    func isNumberPerfect(_ number: Int) {
        fatalError()
    }

	//    Задача 5 Развернуть число
	func mirror(number: Int) {
		fatalError()
	}

}

