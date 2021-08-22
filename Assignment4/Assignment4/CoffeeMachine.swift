//
//  CoffeeMachine.swift
//  Assignment4
//
//  Created by Ivan Pavlenko on 20.08.2021.
//  Copyright © 2021 Ivan Besarab. All rights reserved.
//

import Foundation

class CoffeeMachine {
    
    var inCoffeeMachine = ["water": 0, "beans": 0, "milk": 0]
    let espressoFormula = ["water": 30, "beans": 10]
    let americanoFormula = ["water": 500, "beans": 10]
    let cappuccinoFormula = ["water": 60, "beans": 10, "milk": 60]
    
    func makeAmericano() -> String {
        for (ingredient, value) in americanoFormula {
            if checkIngredient(inCoffeeMachine[ingredient]!, value) {}
            else {
                return "not enough \(ingredient)"
            }
        }
        return americano()
    }
    func makeCapuccino() -> String {
        for (ingredient, value) in cappuccinoFormula {
            if checkIngredient(inCoffeeMachine[ingredient]!, value) {}
            else {
                return "not enough \(ingredient)"
            }
        }
        return cappuccino()
    }
    
    func makeEspresso() -> String {
        for (ingredient, value) in espressoFormula {
            if checkIngredient(inCoffeeMachine[ingredient]!, value) {}
            else {
                return "not enough \(ingredient)"
            }
        }
        return cappuccino()
    }
    
    private func checkIngredient(_ inMachine: Int, _ needForCup: Int) -> Bool {
        if inMachine >= needForCup {
            return true
        }
        else {
            return false
        }
    }
    
    func addWater() -> String {
        inCoffeeMachine["water"]! += 1000
        return "water in tank \(inCoffeeMachine["water"]!)"
    }
    
    func addBeans() -> String  {
        inCoffeeMachine["beans"]! += 100
        return "beans in tank \(inCoffeeMachine["beans"]!)"
    }
    
    func addMilk() -> String  {
        inCoffeeMachine["milk"]! += 200
        return "milk in tank \(inCoffeeMachine["milk"]!)"
    }
    
    private func americano() -> String {
        inCoffeeMachine["beans"]! -= americanoFormula["beans"]!
        inCoffeeMachine["water"]! -= americanoFormula["water"]!
        return "your americano sir"
    }
    
    private func espresso() -> String {
        inCoffeeMachine["beans"]! -= espressoFormula["beans"]!
        inCoffeeMachine["water"]! -= espressoFormula["water"]!
        return "your espresso sir"
    }
    
    private func cappuccino() -> String {
        inCoffeeMachine["beans"]! -= cappuccinoFormula["beans"]!
        inCoffeeMachine["water"]! -= cappuccinoFormula["water"]!
        inCoffeeMachine["milk"]! -= cappuccinoFormula["milk"]!
        return "your cappuccino sir"
    }
}
