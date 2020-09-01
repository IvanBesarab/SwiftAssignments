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
        if numberA > numberB {
                   print("Greatest number is \(numberA)")
               }
               else {
                   print("Greatest number is \(numberB)")
               }
    }
    //    Задача 1. Вывести квадрат и куб введенного числа
    func findSquareAndQubeOf(number: Int) {
        let square = number * number
        let qube = number * number * number
        print("square of \(number) = \(square)")
        print("qube of \(number) = \(qube)")
    }
    
    //    Задача 2. Вывести все числа до заданного и в обратном порядке до 0
    func numbersUpToNAndBackToZero(with number: Int) {
        for a in 0..<number {
            print("\(a)")
    }
        for a in (0...number).reversed() {
            print("\(a)")
        }
    }
    //    Задача 3. Подсчитать общее число делителей числа и вывести их
    func findDivisors(of number: Int) {
        var devisorCount = 0
            for devisor in 1..<number{
                if number % devisor == 0 {
                    print(devisor)
                    devisorCount += 1
                }
            }
            print("number \(number) has \(devisorCount) divisors")
        }
    
    //    Задача 4 Проверить, является ли заданное число совершенным
    func isNumberPerfect(_ number: Int) {
         var deviderCount2 = 0
               var deviderSum = 0
               for devider in 1..<number {
                   if number % devider == 0 {
                       deviderCount2 += 1
                       deviderSum += devider
                   }
               }
               if deviderSum == number {
                   print("number \(number) is perfect")
               }
               else {
                   print("number \(number) is NOT perfect")
               }
           
    }
    
//    //    Задача 5 Развернуть число
//    func mirror(number: Int) {
//        //		fatalError()
//    }
    
}

