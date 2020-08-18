//
//  Assignment2Tests.swift
//  Assignment2Tests
//
//  Created by Ivan Besarab on 8/11/20.
//  Copyright © 2020 Ivan Besarab. All rights reserved.
//

import XCTest
@testable import Assignment2

class Assignment2Tests: XCTestCase {

    let vc = ViewController()

    //    Задача 0. Вывести наибольшее из двух чисел
    func test_0() {
        Logger.shared.clean()
        let testInput1 = """
Greatest number is \(9)
"""
        vc.findGreatestNumber(numberA: 3, numberB: 9)
        XCTAssertEqual(testInput1, Logger.shared.logText)

        Logger.shared.clean()
        let testInput2 = """
Greatest number is \(98)
"""
        vc.findGreatestNumber(numberA: 98, numberB: 45)
        XCTAssertEqual(testInput2, Logger.shared.logText)

        Logger.shared.clean()
        let testInput3 = """
Greatest number is \(11)
"""
        vc.findGreatestNumber(numberA: 11, numberB: 11)
        XCTAssertEqual(testInput3, Logger.shared.logText)
    }

    //    Задача 1. Вывести квадрат и куб введенного числа
    func test_1() {
        Logger.shared.clean()
        let testInput1 = """
square of \(2) = \(4)
qube of \(2) = \(8)
"""
        vc.findSquareAndQubeOf(number: 2)
        XCTAssertEqual(testInput1, Logger.shared.logText)

        Logger.shared.clean()
        let testInput2 = """
square of \(3) = \(9)
qube of \(3) = \(27)
"""
        vc.findSquareAndQubeOf(number: 3)
        XCTAssertEqual(testInput2, Logger.shared.logText)
    }

    //    Задача 2. Вывести все числа до заданного и в обратном порядке до 0
    func test_2() {
        Logger.shared.clean()
        let testInput1 = """
0
1
0
"""
        vc.numbersUpToNAndBackToZero(with: 1)
        XCTAssertEqual(testInput1, Logger.shared.logText)

        Logger.shared.clean()
        let testInput2 = """
0
1
2
3
2
1
0
"""
        vc.numbersUpToNAndBackToZero(with: 3)
        XCTAssertEqual(testInput2, Logger.shared.logText)

        Logger.shared.clean()
        let testInput3 = """
0
1
2
3
4
5
6
7
8
9
8
7
6
5
4
3
2
1
0
"""
        vc.numbersUpToNAndBackToZero(with: 9)
        XCTAssertEqual(testInput3, Logger.shared.logText)
    }

    //    Задача 3. Подсчитать общее число делителей числа и вывести их
    func test_3() {
        Logger.shared.clean()
        let testInput1 = """
1
2
3
number 6 has 3 divisors
"""
        vc.findDivisors(of: 6)
        XCTAssertEqual(testInput1, Logger.shared.logText)

        Logger.shared.clean()
        let testInput2 = """
1
3
5
number 15 has 3 divisors
"""
        vc.findDivisors(of: 15)
        XCTAssertEqual(testInput2, Logger.shared.logText)

        Logger.shared.clean()
        let testInput3 = """
1
2
4
31
62
number 124 has 5 divisors
"""

        vc.findDivisors(of: 124)
        XCTAssertEqual(testInput3, Logger.shared.logText)
    }

    //    Задача 4 Проверить, является ли заданное число совершенным
    func test_4() {
        Logger.shared.clean()
        let testInput1 = """
number 28 is perfect
"""
        vc.isNumberPerfect(number : 28)
        XCTAssertEqual(testInput1, Logger.shared.logText)

        Logger.shared.clean()
        let testInput2 = """
number 6 is perfect
"""
        vc.isNumberPerfect(number : 6)
        XCTAssertEqual(testInput2, Logger.shared.logText)

        Logger.shared.clean()
        let testInput3 = """
number 666 is NOT perfect
"""
        vc.isNumberPerfect(number : 666)
        XCTAssertEqual(testInput3, Logger.shared.logText)
    }

}
