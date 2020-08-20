//
//  Assignment3Tests.swift
//  Assignment3Tests
//
//  Created by Ivan Vasilevich on 04.03.2020.
//  Copyright © 2020 RockSoft. All rights reserved.
//

import XCTest
@testable import Assignment3

class Assignment3Tests: XCTestCase {
	
	let vc = ViewController()
	
	//	Задача 1. Создать строку с своим именем, вывести количество символов содержащихся в ней.

	func test_1() {
		XCTAssertEqual(vc.countStringCharacters(name: "Ivan"), 4)
		XCTAssertEqual(vc.countStringCharacters(name: "Arsalan"), 7)
	}
	
	//	Задача 2. Создать строку с своим отчеством проверить его на окончание “ич/на”

	func test_2() {
		XCTAssertEqual(vc.checkPatronomic(name: "Vasilievich"), true)
		XCTAssertEqual(vc.checkPatronomic(name: "Serhiivna"), true)
		XCTAssertEqual(vc.checkPatronomic(name: "Serhiiv"), false)
	}
	
	//	Задача 3. Cоздать строку, где слитно написано Ваши ИмяФамилия “IvanVasilevich"

	func test_3() {
		XCTAssertEqual(vc.divideCredentials(fullName: "IvanVasilevich"), "Ivan Vasilevich")
		XCTAssertEqual(vc.divideCredentials(fullName: "MichaelJackson"), "Michael Jackson")
		XCTAssertEqual(vc.divideCredentials(fullName: "ФеррариЭнцо"), "Феррари Энцо")
	}
	
	//	Задача 4. Вывести строку зеркально Ось → ьсО не используя reverse

	func test_4() {
		XCTAssertEqual(vc.mirrorString(input: "Ось"), "ьсО")
		XCTAssertEqual(vc.mirrorString(input: "poiuytrewq"), "qwertyuiop")
		XCTAssertEqual(vc.mirrorString(input: "123456789"), "987654321")
	}
	
	//	Задача 5. Добавить запятые в строку как их расставляет калькулятор

	func test_5() {
		XCTAssertEqual(vc.formatNumber(input: "123", separator: " "), "123")
		XCTAssertEqual(vc.formatNumber(input: "1234", separator: ","), "1,234")
		XCTAssertEqual(vc.formatNumber(input: "12345", separator: " "), "12 345")
		XCTAssertEqual(vc.formatNumber(input: "999999", separator: "_"), "999_999")
	}
	
	//	Задача 6. Проверить пароль на надежность от 1 до 5

	func test_6() {
		XCTAssertEqual(vc.checkPassword(password: "123456"), 1)
		XCTAssertEqual(vc.checkPassword(password: "qwerty"), 1)
		XCTAssertEqual(vc.checkPassword(password: "12345qwerty"), 2)
		XCTAssertEqual(vc.checkPassword(password: "32556reWDr"), 3)
		XCTAssertEqual(vc.checkPassword(password: "3255_6reWDr@#"), 5)
	}
	
	//	Задача 7. Сортировка массива не встроенным методом по возрастанию + удалить дубликаты

	func test_7() {
		XCTAssertEqual(vc.sortArrayAndRemoveDuplicates(input: [0, 0, 0, 3, 4, 1, 6, 5, 7, 6]), [0, 1, 3, 4, 5, 6, 7])
		XCTAssertEqual(vc.sortArrayAndRemoveDuplicates(input: [0, 1, 1, 2, 1, 5, 5, 6, 2, 0]), [0, 1, 2, 5, 6])
		XCTAssertEqual(vc.sortArrayAndRemoveDuplicates(input: [0, 1, 0, 0, 3, 0, 6, 6, 2, 4]), [0, 1, 2, 3, 4, 6])
		XCTAssertEqual(vc.sortArrayAndRemoveDuplicates(input: [0, 0, 0, 2, 4, 4, 4, 1, 6, 1]), [0, 1, 2, 4, 6])
		XCTAssertEqual(vc.sortArrayAndRemoveDuplicates(input: [0, 0, 0, 2, 4, 3, 5, 3, 7, 3]), [0, 2, 3, 4, 5, 7])
	}
	
	//	Задача 8. Написать метод, который будет переводить строку в транслит.

	func test_8() {
		XCTAssertEqual(vc.translite(input: "ЯЗЗЬ"), "YAZZ")
		XCTAssertEqual(vc.translite(input: "морДа"), "morDa")
		XCTAssertEqual(vc.translite(input: "Прочесть"), "Prochest")
	}
	
	//	Задача 9. Сделать выборку из массива строк в которых содержится указанная строка

	func test_9() {
		XCTAssertEqual(vc.sortArray(input: ["lada", "sedan", "baklazhan"], searchRequest: "da"), ["lada", "sedan"])
		XCTAssertEqual(vc.sortArray(input: ["Created", "by", "Ivan", "Vasilevich", "on", "04.03.2020"], searchRequest: "a"), ["Created", "Ivan", "Vasilevich"])
	}
	
	//	Задача 10. Убрать запрещенные слова из текста

	func test_10() {
		let badWordsText = """
My pick is great, my pick is very great
My pick is great, is great, my pick is very great
I saw his pick, it's great, it's very-very great
I licked his pick, it's great, it's very-very great
"""
		
		let fixedText = """
My **** is *****, my **** is very *****
My **** is *****, is *****, my **** is very *****
I saw his ****, it's *****, it's very-very *****
I licked his ****, it's *****, it's very-very *****
"""
		
		XCTAssertEqual(vc.filterText(input: badWordsText, bannedWords: ["pick", "great"]), fixedText)
		
		let wrongText2 = """
Засунула в пенал свой "Первый канал"
И второй канал тоже в пенал,
Третий канал туда же в пенал,
Да и четвёртый, если честно, я бы в пенал.
По мне так, что пятый канал, что шестой
Туда же в пенал седьмой и восьмой,
Девятый, десятый, блин, пятидесятый-
Куда не включи-кругом одни дегенераты,
Сколько кнопками не щёлкай на пульте-
Нормального ничего не показывают нигде.
Я так устал от всего этого говна,
И вот именно по этому...
"""
		let fixedText2 = """
Засунула в ***** свой "Первый канал"
И второй канал тоже в *****,
Третий канал туда же в *****,
Да и четвёртый, если честно, * бы в *****.
По мне так, что пятый канал, что шестой
Туда же в ***** седьмой и восьмой,
Девятый, десятый, ****, пятидесятый-
Куда не включи-кругом одни дегенераты,
Сколько кнопками не щёлкай на пульте-
Нормального ничего не показывают нигде.
* так устал от всего этого говна,
И вот именно по этому...
"""
		
		XCTAssertEqual(vc.filterText(input: wrongText2, bannedWords: ["я", "Я", "блин", "пенал"]), fixedText2)
		
	}
    
}
