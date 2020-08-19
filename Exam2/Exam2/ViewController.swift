//
//  ViewController.swift
//  Exam2
//
//  Created by Ivan Besarab on 8/17/20.
//  Copyright © 2020 Ivan Besarab. All rights reserved.
//

import UIKit

class ViewController: RootViewController {
    //    1. Записать метод которий виведет в консоль сообщение С приветсвием "Привет” (без аргументов) - 5мин -макс
    
    func sayHello() {
        print("Hello")
    }
    
    //    2. Записать метод которий будет выводить в консоль сообщение какой день недели относительно числа которое попадает в метод как аргумент (1 аргумент) 10 мин -макс
    
    func showDayOfWeek(dayNumber: Int) {
        switch dayNumber {
        case 1, 8:
            print("Mon")
        case 2, 9:
            print("Tues")
        case 3, 10:
            print("Wed")
        case 4, 11:
            print("Thurs")
        case 5, 12:
            print("Fri")
        case 6, 13:
            print("Sat")
        case 7, 14:
            print("Sun")
        default:
            print("Ошибка")
        }
    }
    
    //    3. Записать метод которий выводит в консоль суму двух чисел  (2 аргумента) 10 мин -макс
    
    func sum(numberA: Int, numberB: Int) {
        print(numberA + numberB)
        
    }
    
    //    4. Записать метод которий будет умножать задание число на 30 прибавлять 5 и возвращать результат вичислений, єтот результат нужно использовать в методе viewDidLoad для вивода в консоль  (1 аргумент + return) 15мин -макс (2 * 30 + 5 )
    //    print(calc(number: 2)) // in viewDidLoad
    
    func calc(number: Int) -> Int {
        let sum = number * 30 + 5
        return sum    }
    
    //    5. Записать метод которий виведет в консоль сообщение С приветсвием "Привет” заданное количество раз (1 аргумент) - 5мин -макс
    
    func sayHello(repeatCount: Int) {
        for _ in 0..<repeatCount {
            print("Hello")
            
        }
        
        //    6. Написать метод который будет показывать число Фибоначчи например fib(num:6) должно вернуть число 8 (1 аргумент + return)
        func fibanachi(number: Int) -> Int {
            var mainNumber = 1
            var numberX = mainNumber
            var previosNumber = Int()
            for index in 0..<number {
                if index < 2 {
                    mainNumber = 1
                }
                if index >= 2 {
                    previosNumber = numberX
                    numberX = mainNumber
                    mainNumber += previosNumber
                }
            }
            return mainNumber
        }
        
    }
}
