//
//  ViewController.swift
//  Assignment3
//
//  Created by Ivan Vasilevich on 04.03.2020.
//  Copyright © 2020 RockSoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

 //    Задача 1. Создать строку с своим именем, вывести количество символов содержащихся в ней.
    
    func countStringCharacters(name: String) -> Int {
        return name.count
    }
    
    //    Задача 2. Создать строку с своим отчеством проверить его на окончание “ич/на”
    
    func checkPatronomic(name: String) -> Bool {
        if name.hasSuffix("ich") {
            return true
        }
        if name.hasSuffix("vna") {
            return true
        }
        else {
            return false
        }
    }
    
    //    Задача 3. Cоздать строку, где слитно написано Ваши ИмяФамилия “IvanVasilevich"
    
    func divideCredentials(fullName: String) -> String {
        fatalError()
    }
    
    //    Задача 4. Вывести строку зеркально Ось → ьсО не используя reverse
    
    func mirrorString(input: String) -> String {
        var str = ""
        for character in input {
            str = "\(character)" + str
        }
        return str
    }
    
    //    Задача 5. Добавить запятые в строку как их расставляет калькулятор
    
    func formatNumber(input: String, separator: String) -> String {
        var newText : String = ""
        for character in input {
            newText.insert(character, at: newText.startIndex)
        }
        var result : String = ""
        for (index , number) in newText.enumerated() {
            if index != 0 && index % 3 == 0 {
                result.append(separator)
            }
            result.append(number)
        }
        var finalResult : String = ""
        for i in result {
            finalResult.insert(i, at: finalResult.startIndex)
        }
        return finalResult
    }
    
    //    Задача 6. Проверить пароль на надежность от 1 до 5
    
    func checkPassword(password: String) -> Int {
        var markNumbers = 0
        var markLetter = 0
        var markUppercased = 0
        var markSymbol = 0
        var totalScore = 0
        for character in password {
            if character.isNumber {
                markNumbers += 1
            }
            if character.isLetter {
                markLetter += 1
            }
            if character.isUppercase {
                markUppercased += 1
            }
            if character.isPunctuation {
                markSymbol += 2
            }
        }
        if markNumbers >= 1 {
            totalScore += 1
        }
        if markLetter >= 1 {
            totalScore += 1
        }
        if markUppercased >= 1 {
            totalScore += 1
        }
        if markSymbol >= 1 {
            totalScore += 2
        }
        return totalScore
    }


    //    Задача 7. Сортировка массива не встроенным методом по возрастанию + удалить дубликаты

    func sortArrayAndRemoveDuplicates(input: [Int]) -> [Int] {
        fatalError()
    }

    //    Задача 8. Написать метод, который будет переводить строку в транслит.

    func translite(input: String) -> String {
        fatalError()
    }

    //    Задача 9. Сделать выборку из массива строк в которых содержится указанная строка

    func sortArray(input: [String], searchRequest: String) -> [String] {
        fatalError()
    }

    //    Задача 10. Убрать запрещенные слова из текста

    func filterText(input: String, bannedWords: [String]) -> String {
        fatalError()
    }

}

