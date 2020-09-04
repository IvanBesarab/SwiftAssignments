//
//  Assignment4Tests.swift
//  Assignment4Tests
//
//  Created by Ivan Besarab on 9/2/20.
//  Copyright © 2020 Ivan Besarab. All rights reserved.
//

import XCTest
@testable import Assignment4

class Assignment4Tests: XCTestCase {
    // makeEspresso beans 10 water 30
    // makeAmericano beans 10 water 500
    // makeCapuchino beans 10 water 60 milk 60
    // addWater water +1000
    // addBeans beans +100
    // addMilk milk +200
    func testCoffeMachine() throws {
//        // create empty coffee machine
let myCoffeMachine = CoffeeMachine.init(beansInNew: 0, waterInNew: 0, milkInNew: 0)
//
//        // test that machine coming empty
XCTAssertEqual(myCoffeMachine.makeAmericano(), "not enough water")
XCTAssertEqual(myCoffeMachine.addWater(), "water in tank 1000")
XCTAssertEqual(myCoffeMachine.makeAmericano(), "not enough beans")
XCTAssertEqual(myCoffeMachine.addBeans(), "beans in tank 100")
//
//        // test that machine can make Americano drink
XCTAssertEqual(myCoffeMachine.makeAmericano(), "your americano sir")
//
//        // test that machine can't make cappuccino drink without milk
XCTAssertEqual(myCoffeMachine.makeCapuccino(), "not enough milk")
XCTAssertEqual(myCoffeMachine.addMilk(), "milk in tank 200")
//
//        // test that machine can make Capuccino drink
XCTAssertEqual(myCoffeMachine.makeCapuccino(), "your cappuccino sir")
//
//        // coffee machine capacity tests
XCTAssertEqual(myCoffeMachine.makeCapuccino(), "your cappuccino sir")
//
XCTAssertEqual(myCoffeMachine.makeAmericano(), "not enough water")
XCTAssertEqual(myCoffeMachine.addWater(), "water in tank 1380")
//
XCTAssertEqual(myCoffeMachine.makeCapuccino(), "your cappuccino sir")
//
//XCTAssertEqual(myCoffeMachine.makeCapuccino(), "your cappuccino sir")
//
XCTAssertEqual(myCoffeMachine.makeCapuccino(), "not enough milk")
XCTAssertEqual(myCoffeMachine.addMilk(), "milk in tank 220")
XCTAssertEqual(myCoffeMachine.makeAmericano(), "your americano sir")
XCTAssertEqual(myCoffeMachine.makeAmericano(), "your americano sir")
//
XCTAssertEqual(myCoffeMachine.addWater(), "water in tank 1320")
XCTAssertEqual(myCoffeMachine.makeAmericano(), "your americano sir")
XCTAssertEqual(myCoffeMachine.makeAmericano(), "your americano sir")
XCTAssertEqual(myCoffeMachine.addWater(), "water in tank 1320")
XCTAssertEqual(myCoffeMachine.makeAmericano(), "your americano sir")
XCTAssertEqual(myCoffeMachine.makeAmericano(), "your americano sir")
XCTAssertEqual(myCoffeMachine.makeCapuccino(), "not enough beans")
//
XCTAssertEqual(myCoffeMachine.addBeans(), "beans in tank 100")
XCTAssertEqual(myCoffeMachine.makeCapuccino(), "your cappuccino sir")
    }

}
