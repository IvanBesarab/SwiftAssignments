//
//  Exam2Tests.swift
//  Exam2Tests
//
//  Created by Ivan Besarab on 8/17/20.
//  Copyright © 2020 Ivan Besarab. All rights reserved.
//

import XCTest
@testable import Exam2

class Exam2Tests: XCTestCase {

    let vc = ViewController()

    //    1. Записать метод которий виведет в консоль сообщение С приветсвием "Привет” (без аргументов) - 5мин -макс
    func test_task1() {
        Logger.shared.clean()
        let testInput1 = """
Hello
"""
        vc.sayHello()
        XCTAssertEqual(testInput1, Logger.shared.logText)
    }

    //    2. Записать метод которий будет выводить в консоль сообщение какой день недели относительно числа которое попадает в метод как аргумент (1 аргумент) 10 мин -макс

    func test_task2() {
        Logger.shared.clean()
        let testInput1 = """
Wed
"""
        vc.showDayOfWeek(dayNumber: 3)
        XCTAssertEqual(testInput1, Logger.shared.logText)

        Logger.shared.clean()
        let testInput2 = """
Fri
"""
        vc.showDayOfWeek(dayNumber: 5)
        XCTAssertEqual(testInput2, Logger.shared.logText)

        Logger.shared.clean()
        let testInput3 = """
Mon
"""
        vc.showDayOfWeek(dayNumber: 8)
        XCTAssertEqual(testInput3, Logger.shared.logText)
    }

    //    3. Записать метод которий выводит в консоль суму двух чисел  (2 аргумента) 10 мин -макс

    func test_task3() {
        Logger.shared.clean()
        let testInput1 = """
16
"""
        vc.sum(numberA: 12, numberB: 4)
        XCTAssertEqual(testInput1, Logger.shared.logText)

        Logger.shared.clean()
        let testInput2 = """
15
"""
        vc.sum(numberA: 8, numberB: 7)
        XCTAssertEqual(testInput2, Logger.shared.logText)
    }

    //    4. Записать метод которий будет умножать задание число на 30 прибавлять 5 и возвращать результат вичислений, єтот результат нужно использовать в методе viewDidLoad для вивода в консоль  (1 аргумент + return) 15мин -макс (2 * 30 + 5 )
    //    print(calc(number: 2))

    func test_task4() {
        Logger.shared.clean()
        let result1 = vc.calc(number: 2)
        XCTAssertEqual(result1, 65)

        Logger.shared.clean()
        let result2 = vc.calc(number: 5)
        XCTAssertEqual(result2, 155)
    }

    //    5. Записать метод которий виведет в консоль сообщение С приветсвием "Привет” заданное количество раз (1 аргумент) - 5мин -макс

    func test_task5() {
        Logger.shared.clean()
        let testInput1 = """
Hello
Hello
Hello
"""
        vc.sayHello(repeatCount: 3)
        XCTAssertEqual(testInput1, Logger.shared.logText)
    }

//        6. Написать метод который будет показывать число Фибоначчи например fib(num:6) должно вернуть число 8 (1 аргумент + return)

    func test_task6() {
        Logger.shared.clean()
        let result1 = vc.fibanachi(number: 6)
        XCTAssertEqual(result1, 8)

        Logger.shared.clean()
        let result2 = vc.fibanachi(number: 9)
        XCTAssertEqual(result2, 34)
    }

}
