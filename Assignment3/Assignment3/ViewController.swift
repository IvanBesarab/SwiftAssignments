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
        return name.hasSuffix("ich") || name.hasSuffix("na")
    }
    
    //    Задача 3. Cоздать строку, где слитно написано Ваши ИмяФамилия “IvanVasilevich"
    
    func divideCredentials(fullName: String) -> String {
        
        func removeFirstCharacter(fullName: String) -> String {
            var cutName = fullName
            cutName.remove(at: cutName.startIndex)
            return cutName
        }
        
        func findBigCharacter(cutName: String) -> Int {
            var counter = 1
            for i in cutName {
                if i.isLowercase {
                    counter += 1
                }
                else {
                    break
                }
            }
            return counter
        }
        
        let cutName = removeFirstCharacter(fullName: fullName)
        let counter = findBigCharacter(cutName: cutName)
        
        var newName = fullName
        newName.insert(" ", at: newName.index(newName.startIndex, offsetBy: counter))
        return newName
    }
    //    Задача 4. Вывести строку зеркально Ось → ьсО не используя reverse
    
    func mirrorString(input: String) -> String {
        var reString = ""
        for i in input {
            reString.insert(i, at: reString.startIndex)
        }
        return reString
    }
    
    //    Задача 5. Добавить запятые в строку как их расставляет калькулятор
    
    func formatNumber(input: String, separator: String) -> String {
        var counterOfCharacter = input.count
        var counterForPosition = 3
        var numberWithPoint = input
        while counterOfCharacter > 3 {
            numberWithPoint.insert(contentsOf: separator, at: numberWithPoint.index(numberWithPoint.endIndex, offsetBy: -(counterForPosition)))
            counterForPosition += 4
            counterOfCharacter -= 3
        }
        return numberWithPoint
        
    }
    
    //    Задача 6. Проверить пароль на надежность от 1 до 5
    
    func checkPassword(password: String) -> Int {
        var counerOfSecurity = 0
        let checkForNumber = "0123456789"
        let checkForSymbol = "@#$&_"
        var trigger_1 = 0
        var trigger_2 = 0
        var trigger_3 = 0
        var trigger_4 = 0
        for i in password {
            if checkForNumber.contains(i) && trigger_1 == 0 {
                counerOfSecurity += 1
                trigger_1 = 1
            }
            if checkForSymbol.contains(i) && trigger_2 == 0 {
                counerOfSecurity += 1
                trigger_2 = 1
            }
            if i.isUppercase && trigger_3 == 0 {
                counerOfSecurity += 1
                trigger_3 = 1
            }
            if i.isLowercase && trigger_4 == 0 {
                counerOfSecurity += 1
                trigger_4 = 1
            }
        }
        if counerOfSecurity == 4 {
            counerOfSecurity += 1
        }
        return counerOfSecurity
    }
    
    //    Задача 7. Сортировка массива не встроенным методом по возрастанию + удалить дубликаты
    
    func sortArrayAndRemoveDuplicates(input: [Int]) -> [Int] {
        
        var sortedNumbers: [Int] = [input[0]]
        for i in input[1..<input.count] {
            
            if i == sortedNumbers[0] {
                continue
            } else if i < sortedNumbers[0] {
                sortedNumbers.insert(i, at: 0)
            } else if i > sortedNumbers[0] {
                var position = 0
                while i > sortedNumbers[position] {
                    position += 1
                    if sortedNumbers.count == position {
                        sortedNumbers.insert(i, at: position)
                        break
                    }
                    if i > sortedNumbers[position] {
                        continue
                    } else if i < sortedNumbers[position] {
                        sortedNumbers.insert(i, at: position)
                    } else if i == sortedNumbers[position] {
                        continue
                    }
                }
            }
        }
        return sortedNumbers
    }
    
    //    Задача 8. Написать метод, который будет переводить строку в транслит.
    
    func translite(input: String) -> String {
        let russianToEnglish = ["а": "a", "д": "d", "м": "m", "о": "o", "р": "r", "с": "s", "е": "e",
                                "т": "t", "п": "p", "ч": "ch", "я": "ya", "з": "z", "ь": "",
                                "А": "A", "Д": "D", "М": "M", "О": "O", "Р": "R", "С": "S", "Е": "E",
                                "Т": "T", "П": "P", "Ч": "CH", "Я": "YA", "З": "Z", "Ь": ""]
        var convertedStr = ""
        for i in input {
            for (kay, value) in russianToEnglish {
                if i == Character(kay) {
                    convertedStr += value
                    break
                } else {
                    continue
                }
            }
            
        }
        return convertedStr
    }
    
    //    Задача 9. Сделать выборку из массива строк в которых содержится указанная строка
    
    func sortArray(input: [String], searchRequest: String) -> [String] {
        var fixArray = [String]()
        for word in input {
            let lengthFilter = searchRequest.count
            var position = 0
            while position != word.count {
                if word.count - position  >= lengthFilter {
                    let range = word[word.index(word.startIndex, offsetBy: position)..<word.index(word.startIndex, offsetBy: position + lengthFilter)]
                    if range == searchRequest {
                        fixArray.append(word)
                        position = word.count
                    } else {
                        position += 1
                    }
                } else {
                    position = word.count
                }
            }
        }
        return fixArray
    }
    
    //    Задача 10. Убрать запрещенные слова из текста
    
    func filterText(input: String, bannedWords: [String]) -> String {
        let preffixSuffix = [".", ",", "-", "!", ":", ";", "?"]
        let splitSeparator: Character = " "
        let splitSeparatorForNewLine: Character = "\n"
        var spaceSplitInput = input.split(separator: splitSeparator, omittingEmptySubsequences: false)
        for position in 0..<spaceSplitInput.count {
            let checkWord = spaceSplitInput[position]
            let preffixCheckWord = removePriffix(word: String(checkWord), matrix: preffixSuffix)
            let suffixCheckWord = removeSuffix(word: String(checkWord), matrix: preffixSuffix)
            var cleanCheckWord = checkPreffixSuffix(word: String(checkWord), matrix: preffixSuffix)
            for mat in bannedWords {
                if cleanCheckWord.contains(splitSeparatorForNewLine) {
                    var wordsWithoutNewline = cleanCheckWord.split(separator: splitSeparatorForNewLine, omittingEmptySubsequences: false)
                    for counter in 0..<wordsWithoutNewline.count {
                        let word = wordsWithoutNewline[counter]
                        let preffixWord = removePriffix(word: String(word), matrix: preffixSuffix)
                        let suffixWord = removeSuffix(word: String(word), matrix: preffixSuffix)
                        var cleanWord = checkPreffixSuffix(word: String(word), matrix: preffixSuffix)
                        if cleanWord == mat {
                            cleanWord = starOnMat(mat: String(cleanWord))
                            cleanWord  = preffixWord + cleanWord + suffixWord
                            wordsWithoutNewline[counter] = Substring(cleanWord)
                        }
                    }
                    cleanCheckWord = wordsWithoutNewline.joined(separator: String(splitSeparatorForNewLine))
                }
                else if cleanCheckWord == mat {
                    cleanCheckWord = starOnMat(mat: cleanCheckWord)
                }
            }
            cleanCheckWord = preffixCheckWord + cleanCheckWord + suffixCheckWord
            spaceSplitInput[position] = Substring(cleanCheckWord)
        }
        return spaceSplitInput.joined(separator: String(splitSeparator))
    }
}

func removePriffix(word: String, matrix:[String]) -> String {
    var clearWord = word
    var preffix = ""
    for i in matrix {
        if clearWord.hasPrefix(i) {
            while clearWord.hasPrefix(i) {
                preffix.insert(clearWord[clearWord.startIndex], at: preffix.endIndex)
                clearWord.remove(at: clearWord.startIndex)
            }
        }
    }
    return preffix
}

func removeSuffix(word: String, matrix:[String]) -> String {
    var clearWord = word
    var suffix = ""
    for i in matrix {
        if clearWord.hasSuffix(i) {
            while clearWord.hasSuffix(i) {
                suffix.insert(clearWord[clearWord.index(before: clearWord.endIndex)], at: suffix.startIndex)
                clearWord.remove(at: clearWord.index(before: clearWord.endIndex))
            }
        }
    }
    return suffix
}

func checkPreffixSuffix(word: String, matrix:[String]) -> String {
    var clearWord = word
    for i in matrix {
        if clearWord.hasPrefix(i) {
            while clearWord.hasPrefix(i) {
                clearWord.remove(at: clearWord.startIndex)
            }
        }
        if clearWord.hasSuffix(i) {
            while clearWord.hasSuffix(i) {
                clearWord.remove(at: clearWord.index(before: clearWord.endIndex))
            }
        }
    }
    return clearWord
}

func starOnMat(mat: String) -> String {
    var starRow = ""
    for _ in 0..<mat.count {
        starRow += "*"
    }
    return starRow
}

