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
        print("Задание 0")
        if numberA > numberB {
            print("Первое число больше, и оно равно \(numberA)")
        } else if numberB > numberA {
            print("Второе число больше, и оно равно \(numberB)")
        } else {
            print("Числа равны \(numberA) = \(numberB)")
        }
    }

    //    Задача 1. Вывести квадрат и куб введенного числа
    func findSquareAndQubeOf(number: Int) {
        print("Задание 1")
        print("Число \(number)")
        print("Квадрат числа \(number * number)")
        print("Куб числа  \(number * number * number)")
    }

    //    Задача 2. Вывести все числа до заданного и в обратном порядке до 0
    func numbersUpToNAndBackToZero(with number: Int) {
        print("Задание 2")
        var integer = 0
        print("Возрастание")
        while integer != number {
            print(integer)
            integer += 1
        }
        print("Максимум \(number)")
        print("Спадание")
        while integer != 0  {
            integer -=  1
            print(integer)
        }
    }

    //    Задача 3. Подсчитать общее число делителей числа и вывести их
    func findDivisors(of number: Int) {
        print("Задание 3")
        var sum = 0
        print("Число \(number)")
        for index in 1...number {
            var division = number % index
            if division == 0 {
                sum += 1
            }
        }
        print(" \(sum) делителя (число также делится на само себя)")
    }

    //    Задача 4 Проверить, является ли заданное число совершенным
    func isNumberPerfect(_ number: Int) {
        print("Задание 4")
        var sum = 0
        for i in 1...number-1 {
            if number % i == 0 {
                sum += i
            }
        }
        if (sum == number) {
            print("\(number) является совершенным числом")
        } else {
             print("\(number) не является совершенным числом")
        }
    }

	//    Задача 5 Развернуть число
    func mirror(number: Int) {
        print("Задание 5")
        print("Число \(number)")
        if number < 10 {
            print("Число не может быть задом на перед")
        } else if number < 100 {
            var mirrorNumber = (number % 10 * 10) + (number / 10)
            print("Число задом на перед \(mirrorNumber)")
        } else if number < 1000 {
            var mirrorNumber = (number % 10 * 100) + (number / 10 % 10 * 10) + (number / 100)
            print("Число задом на перед \(mirrorNumber)")
        } else if number < 10000 {
            var mirrorNumber = (number % 10 * 1000) + (number % 100 / 10 * 100) + (number / 100 % 10 * 10) + (number / 1000)
            print("Число задом на перед \(mirrorNumber)")
        }
    }

}

