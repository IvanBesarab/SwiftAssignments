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
        print("Меня зовут \(name)")
        return name.count
        
    }
    
    //    Задача 2. Создать строку с своим отчеством проверить его на окончание “ич/на”
    
    func checkPatronomic(name: String) -> Bool {
        if name.hasSuffix("ich") {
            return true
        } else if name.hasSuffix("na") {
            return true
        } else {
            return false
        }
    }
    
    //    Задача 3. Cоздать строку, где слитно написано Ваши ИмяФамилия “IvanVasilevich"
    
    func divideCredentials(fullName: String) -> String {
        var indexCharacter = 0
        var arrayName = [Character]()
        for _ in 0..<fullName.count {
            let index = fullName.index(fullName.startIndex, offsetBy: indexCharacter)
            indexCharacter += 1
            arrayName += [fullName[index]]
        }
        var indexLetter = 1 // пропускаю 0 потому что "А" большая
        var letter = arrayName[indexLetter]
        while letter != Character(letter.uppercased()) {
            indexLetter += 1
            letter = arrayName[indexLetter]
        }
        let name = fullName.substring(to: indexLetter)
        let surname = fullName.substring(from: indexLetter)
        let spaceBetweenWords = "\(name)"+" "+"\(surname)"
        return spaceBetweenWords
    }
    
    
    //    Задача 4. Вывести строку зеркально Ось → ьсО не используя reverse
    
    func mirrorString(input: String) -> String {
        var word = input
        var mirrorWord = String()
        for _ in 0..<word.count {
            let endLetter = word.remove(at: word.index(before: word.endIndex))
            mirrorWord += String(endLetter)
        }
        return mirrorWord
    }
    
    //    Задача 5. Добавить запятые в строку как их расставляет калькулятор
    
    func formatNumber(input: String, separator: String) -> String {
        var figures = input
        var mirrorFigures = String()
        for _ in 1...figures.count {
            let endLetter = figures.remove(at: figures.index(before: figures.endIndex))
            mirrorFigures += String(endLetter)
        }
        var indexMirrorFigures = 0
        var arrayMirrorFigures = [Character]()
        while indexMirrorFigures != mirrorFigures.count {
            let index = mirrorFigures.index(mirrorFigures.startIndex, offsetBy: indexMirrorFigures)
            arrayMirrorFigures += [mirrorFigures[index]]
            indexMirrorFigures += 1
        }
        var howManyFigures = 4
        var indexArrayMirrorFigures = 3
        let HowManyCharacterAreInArray = arrayMirrorFigures // без этой строки не работает код
        while howManyFigures <= HowManyCharacterAreInArray.count {
            arrayMirrorFigures.insert(contentsOf: separator, at: indexArrayMirrorFigures)
            howManyFigures += 3
            indexArrayMirrorFigures += 4
        }
        var returnNormalFigures = String() // мы возвращаем порядок цифр, который был до зеркального отображения
        for _ in 0..<arrayMirrorFigures.count {
            let endLetterArray = arrayMirrorFigures.removeLast()
            returnNormalFigures += String(endLetterArray)
        }
        return String(returnNormalFigures)
    }
    
    //    Задача 6. Проверить пароль на надежность от 1 до 5
    
    func checkPassword(password: String) -> Int {
        var scoreLetter = 0
        var scoreNumber = 0
        var scorePunctuation = 0
        var scoreUppercased = 0
        var indexNumber = 0
        for _ in 0..<password.count {
            let index = password.index(password.startIndex, offsetBy: indexNumber)
            let letter = password[index]
            if letter.isLetter {
                scoreLetter = 1
            }
            if letter.isNumber {
                scoreNumber = 1
            }
            if letter.isPunctuation {
                scorePunctuation = 2
            }
            if letter.isLetter && letter == Character(letter.uppercased()) {
                scoreUppercased = 1
            }
            indexNumber += 1
        }
        let sum = scoreLetter + scoreNumber + scorePunctuation + scoreUppercased
        return  sum
    }
    
    
    //    Задача 7. Сортировка массива не встроенным методом по возрастанию + удалить дубликаты
    
    func sortArrayAndRemoveDuplicates(input: [Int]) -> [Int] {
        let firstSet = Set(input)
        var firstArray = Array(firstSet)
        var secondArray = [Int]()
        while firstArray.min() != firstArray.max() {
            secondArray.append(firstArray.min()!)
            if let index = firstArray.firstIndex(of: firstArray.min()!) {
                firstArray.remove(at: index) // удаление минимального значения из firstArray
            }
        }
        secondArray.append(firstArray.max()!)
        return secondArray
    }
    
    //    Задача 8. Написать метод, который будет переводить строку в транслит.
    
    func translite(input: String) -> String {
        let dictionary = ["я": "ya",
                          "з": "z",
                          "ь": "",
                          "м": "m",
                          "о": "o",
                          "р": "r",
                          "д": "d",
                          "а": "a",
                          "п": "p",
                          "ч": "ch",
                          "е": "e",
                          "с": "s",
                          "т": "t"]
        var inputIndex = 0
        var array = [String]()
        var word = ""
        for _ in 0..<input.count {
            let index = input.index(input.startIndex, offsetBy: inputIndex)
            var  inputLetter = String(input[index])
            if inputLetter.lowercased() == inputLetter {
                word += dictionary[inputLetter] ?? ""
            } else if inputLetter.uppercased() == inputLetter {
                inputLetter = inputLetter.lowercased()
                let letter = dictionary[inputLetter] ?? ""
                word += letter.uppercased()
            }
            inputIndex += 1
        }
        return word
    }
    
    
    
    //    Задача 9. Сделать выборку из массива строк в которых содержится указанная строка
    
    func sortArray(input: [String], searchRequest: String) -> [String] {
        var array = [String]()
        var nextWordIndex = 0
        for _ in 0..<input.count {
            if input[nextWordIndex].contains(searchRequest) {
                array += [input[nextWordIndex]]
            }
            nextWordIndex += 1
        }
        return array
    }
    
    //    Задача 10. Убрать запрещенные слова из текста
    
    func filterText(input: String, bannedWords: [String]) -> String {
        var array = input.replacingOccurrences(of: ",", with: " ,").replacingOccurrences(of: ".", with: " . ").replacingOccurrences(of: "\n", with: " \n ").components(separatedBy: " ")
        var newName = ""
        var indexArray = 0
        for _ in 0..<array.count {
            if bannedWords.contains(array[indexArray]) {
                var newName = ""
                for _ in 0..<array[indexArray].count {
                    newName += "*"
                }
                array[indexArray] = newName
            }
            indexArray += 1
        }
        let string = array.joined(separator: " ").replacingOccurrences(of: " ,", with: ",").replacingOccurrences(of: " . ", with: ".").replacingOccurrences(of: " \n ", with: "\n")
        return string
    }
    
}
