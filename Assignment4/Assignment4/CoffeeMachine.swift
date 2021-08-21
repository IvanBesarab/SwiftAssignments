//
//  CoffeeMachine.swift
//  Assignment4
//
//  Created by Ivan Pavlenko on 20.08.2021.
//  Copyright © 2021 Ivan Besarab. All rights reserved.
//

import Foundation

class CoffeeMachine {
    
    var coffeeBeans: Int = 0
    var water: Int = 0
    var milk: Int = 0
    let beansEspresso: Int = 10
    let waterEspresso: Int = 30
    let beansAmericano: Int = 10
    let waterAmericano: Int = 500
    let beansСappuccino: Int = 10
    let waterСappuccino: Int = 60
    let milkСappuccino: Int = 60
    
    func makeAmericano() -> String {
        if checkWater(waterAmericano) {
            if checkCoffee(beansAmericano) {
                return americano()
            }
            else {
                return "not enough beans"
            }
        }
        else {
            return "not enough water"
        }
    }
    
    func makeCapuccino() -> String {
        if checkWater(waterСappuccino) {
            if checkCoffee(beansСappuccino) {
                if checkMilk(milkСappuccino) {
                    return cappuccino()
                }
                else {
                    return "not enough milk"
                }
            }
            else {
                return "not enough beans"
            }
        }
        else {
            return "not enough water"
        }
    }
    
    private func checkCoffee(_ beansForCup: Int) -> Bool {
        if coffeeBeans >= beansForCup {
            return true
        }
        else {
            return false
        }
    }
    
    private func checkWater(_ waterForCup: Int) -> Bool {
        if water >= waterForCup {
            return true
        }
        else {
            return false
        }
    }
    
    private func checkMilk(_ milkForCup: Int) -> Bool {
        if milk >= milkForCup {
            return true
        }
        else {
            return false
        }
    }
    
    func addBeans() -> String  {
        coffeeBeans += 100
        return "beans in tank \(coffeeBeans)"
    }
    
    func addWater() -> String {
        water += 1000
        return "water in tank \(water)"
    }
    
    func addMilk() -> String  {
        milk += 200
        return "milk in tank \(milk)"
    }
    
    private func americano() -> String {
        coffeeBeans -= beansAmericano
        water -= waterAmericano
        return "your americano sir"
    }
    
    private func espresso() -> String {
        coffeeBeans -= beansEspresso
        water -= waterEspresso
        return "your espresso sir"
    }
    
    private func cappuccino() -> String {
        coffeeBeans -= beansСappuccino
        water -= waterСappuccino
        milk -= milkСappuccino
        return "your cappuccino sir"
    }
}
