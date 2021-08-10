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
        let characterInName = name.count
        return characterInName
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
        func isNumber(password: String) -> Int {
            var trigger = 0
            for i in password {
                switch i {
                case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
                    trigger = 1
                    break
                default:
                    continue
                }
            }
            return trigger
        }
        
        func isUpperCharakter(password: String) -> Int {
            var trigger = 0
            for i in password {
                if i.isUppercase {
                    trigger = 1
                    break
                }
            }
            return trigger
        }
        
        func isLowerCharakter(password: String) -> Int {
            var trigger = 0
            for i in password {
                if i.isLowercase {
                    trigger = 1
                    break
                }
            }
            return trigger
        }
        
        func isSymbol(password: String) -> Int {
            var trigger = 0
            for i in password {
                switch i {
                case "@", "#", "$", "&", "_":
                    trigger = 1
                    break
                default:
                    continue
                }
            }
            return trigger
        }
        var counerOfSecurity = 0
        if isNumber(password: password) == 1 {
            counerOfSecurity += 1
        }
        if isUpperCharakter(password: password) == 1 {
            counerOfSecurity += 1
        }
        if isLowerCharakter(password: password) == 1 {
            counerOfSecurity += 1
        }
        if isSymbol(password: password) == 1 {
            counerOfSecurity += 1
        }
        if counerOfSecurity == 4 {
            counerOfSecurity += 1
        }
        return counerOfSecurity
     //   "abw".contains(<#T##element: Character##Character#>)
        
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

    //    Задача 8. Написать метод, который будет переводить строку в транслит. //переделать

    func translite(input: String) -> String {
        func convertStrToTranslite(str: String) -> String {
            let russianToEnglishLowercase = ["а": "a", "д": "d", "м": "m", "о": "o", "р": "r", "с": "s", "е": "e",
                       "т": "t", "п": "p", "ч": "ch", "я": "ya", "з": "z", "ь": ""]
            let aBC = ["А": "A", "Д": "D", "М": "M", "О": "O", "Р": "R", "С": "S", "Е": "E",
                       "Т": "T", "П": "P", "Ч": "CH", "Я": "YA", "З": "Z", "Ь": ""]
            var convertedStr = ""
            for i in str {
                if i.isLowercase {
                    for (kay, value) in russianToEnglishLowercase {
                        if i == Character(kay) {
                            convertedStr += value
                            break
                        } else {
                            continue
                        }
                    }
                } else if i.isUppercase {
                    for (kay, value) in aBC {
                        if i == Character(kay) {
                            convertedStr += value
                            break
                        } else {
                            continue
                        }
                    }
                }
            }
            return convertedStr
        }
        
        return convertStrToTranslite(str: input)
    }

    //    Задача 9. Сделать выборку из массива строк в которых содержится указанная строка

    func sortArray(input: [String], searchRequest: String) -> [String] {
        func findWord(text: [String], filter: String) -> [String] {
            
            var fixArray = [String]()
            for word in text {
                let lengthFilter = filter.count
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
        
        let searchingWords =  findWord(text: input, filter: searchRequest)
        return searchingWords
    }

    //    Задача 10. Убрать запрещенные слова из текста

    func filterText(input: String, bannedWords: [String]) -> String {
        func antiMat(text: String, filter: [String]) -> String {
            
            var fixedText = text
            for mat in filter {
                
                let lengthMat = mat.count
                var position = 0
                
                while position != text.count {
                    
                    if text.count - position  >= lengthMat {
                        
                        let range = fixedText[fixedText.index(fixedText.startIndex, offsetBy: position)..<fixedText.index(fixedText.startIndex, offsetBy: position + lengthMat)]
                        if range == mat {
                            let cutRange = fixedText.index(fixedText.startIndex, offsetBy: position)..<fixedText.index(fixedText.startIndex, offsetBy: position + lengthMat)
                            fixedText.removeSubrange(cutRange)
                            fixedText.insert(contentsOf:starOnMat(mat), at: fixedText.index(fixedText.startIndex, offsetBy: position))
                            position += lengthMat
                        } else {
                            position += 1
                        }
                    } else {
                        position = text.count
                    }
                }
            }
            return fixedText
        }
        
        func starOnMat(_ mat: String) -> String {
            var starRow = ""
            for _ in 0..<mat.count {
                starRow += "*"
            }
            return starRow
        }
        
        let fixedText =  antiMat(text: input, filter: bannedWords)
        return fixedText
    }

}

