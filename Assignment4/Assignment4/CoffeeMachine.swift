//
//  CoffeeMachine.swift
//  Assignment4
//
//  Created by Artem Manakov on 06.09.2020.
//  Copyright © 2020 Ivan Besarab. All rights reserved.
//

import Foundation
let myCoffeMachine = CoffeeMachine()

class CoffeeMachine: NSObject {
    var water = 0
    var beans = 0
    var milk = 0
    
    func makeAmericano() -> String {
        if water < 500 {
            return "not enough water"
        }
        if beans < 10 {
            return "not enough beans"
        }
        water -= 500
        beans -= 10
        return "your americano sir"
        
    }
    
    
    func makeEspresso() -> String {
        if water < 30 {
            return "not enough water"
        }
        if beans < 10 {
            return "not enough beans"
        }
        water -= 30
        beans -= 10
        return "your expresso sir"
        
    }
    
    func makeCapuccino() -> String {
        if water < 60 {
            return "not enough water"
        }
        if beans < 10 {
            return "not enough beans"
        }
        if milk < 60 {
            return "not enough milk"
        }
        water -= 60
        beans -= 10
        milk -= 60
        return "your cappuccino sir"
    }
    
    func addWater() -> String {
        water += 1000
        let addWater = "water in tank \(water)"
        return addWater
    }
    
    func addBeans() -> String {
        beans += 100
        let addBeans = "beans in tank \(beans)"
        return addBeans
    }
    
    func addMilk() -> String {
        milk += 200
        let addMilk = "milk in tank \(milk)"
        return addMilk
    }
}
